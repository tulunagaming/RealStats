-------------------------------------------------------------------------------
-- Leistungsmessung (gleicher Baustein in allen Tuluna-Addons)
--
-- /realstats perf          aktueller Stand: CPU und Speicher
-- /realstats perf start    Messlauf starten (z. B. vor einem M+-Key)
-- /realstats perf stop     Messlauf beenden und in RealStatsDB.perfRuns speichern
--
-- CPU kommt aus Blizzards Addon-Profiler (C_AddOnProfiler), in Millisekunden
-- pro Bild. Speicher über UpdateAddOnMemoryUsage -- das geht alle Addons durch
-- und lässt das Spiel kurz hängen, deshalb nur auf Befehl, nie regelmäßig.
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...

local SAMPLE_EVERY = 5          -- Sekunden zwischen zwei Stichproben im Messlauf
local KEEP_RUNS = 10

local Perf = {}
ns.Perf = Perf

local run                        -- laufender Messlauf

local function Metric(name)
    if not (C_AddOnProfiler and C_AddOnProfiler.GetAddOnMetric and Enum and Enum.AddOnProfilerMetric) then return nil end
    local enum = Enum.AddOnProfilerMetric[name]
    if enum == nil then return nil end
    local ok, value = pcall(C_AddOnProfiler.GetAddOnMetric, ADDON_NAME, enum)
    if ok and type(value) == "number" then return value end
    return nil
end

local function Overall(name)
    if not (C_AddOnProfiler and C_AddOnProfiler.GetOverallMetric and Enum and Enum.AddOnProfilerMetric) then return nil end
    local enum = Enum.AddOnProfilerMetric[name]
    if enum == nil then return nil end
    local ok, value = pcall(C_AddOnProfiler.GetOverallMetric, enum)
    if ok and type(value) == "number" then return value end
    return nil
end

local function MemoryKB()
    if not (UpdateAddOnMemoryUsage and GetAddOnMemoryUsage) then return nil end
    UpdateAddOnMemoryUsage()
    return GetAddOnMemoryUsage(ADDON_NAME)
end

-- Anteil an einem Bild bei 60 fps (16,7 ms)
local function FrameShare(ms)
    return ms and (ms / (1000 / 60) * 100) or nil
end

function Perf.Snapshot(withMemory)
    return {
        session   = Metric("SessionAverageTime"),
        recent    = Metric("RecentAverageTime"),
        encounter = Metric("EncounterAverageTime"),
        peak      = Metric("PeakTime"),
        overall   = Overall("RecentAverageTime"),
        fps       = GetFramerate and GetFramerate() or nil,
        memory    = withMemory and MemoryKB() or nil,
    }
end

local function fmt(ms)
    if not ms then return "?" end
    return string.format("%.4f ms (%.3f %%)", ms, FrameShare(ms))
end

function Perf.Report(print, L)
    local s = Perf.Snapshot(true)
    if s.session == nil then
        print(L["Blizzard's addon profiler is not available."])
    else
        print(string.format(L["CPU per frame - session: %s, recent: %s, peak: %s"],
            fmt(s.session), fmt(s.recent), s.peak and string.format("%.3f ms", s.peak) or "?"))
        if s.overall and s.overall > 0 and s.recent then
            print(string.format(L["Share of all addons: %.2f %%"], s.recent / s.overall * 100))
        end
    end
    if s.memory then print(string.format(L["Memory: %.0f KB"], s.memory)) end
    print(L["Percent = share of one frame at 60 fps."])
end

local function Sample()
    if not run then return end
    local recent = Metric("RecentAverageTime")
    if recent then
        run.samples = run.samples + 1
        run.sum = run.sum + recent
        run.max = math.max(run.max, recent)
    end
    local overall = Overall("RecentAverageTime")
    if overall then run.overallSum = run.overallSum + overall end
    local fps = GetFramerate and GetFramerate()
    if fps then run.fpsSum, run.fpsN = run.fpsSum + fps, run.fpsN + 1 end
end

function Perf.Start(print, L, label)
    if run then print(L["A measurement is already running."]); return end
    run = { label = label ~= "" and label or nil, started = time(), clock = debugprofilestop and debugprofilestop() or 0,
            samples = 0, sum = 0, max = 0, overallSum = 0, fpsSum = 0, fpsN = 0,
            memStart = MemoryKB(), peakStart = Metric("PeakTime") }
    run.ticker = C_Timer.NewTicker and C_Timer.NewTicker(SAMPLE_EVERY, Sample) or nil
    print(L["Measurement started. Play normally, then /realstats perf stop."])
end

function Perf.Stop(print, L)
    if not run then print(L["No measurement is running."]); return nil end
    Sample()
    if run.ticker and run.ticker.Cancel then run.ticker:Cancel() end
    local build = GetBuildInfo and select(1, GetBuildInfo()) or nil
    local result = {
        label      = run.label,
        date       = date and date("%Y-%m-%d %H:%M") or nil,
        patch      = build,
        seconds    = time() - run.started,
        samples    = run.samples,
        cpuAvg     = run.samples > 0 and run.sum / run.samples or nil,
        cpuMax     = run.samples > 0 and run.max or nil,
        allAddons  = run.samples > 0 and run.overallSum / run.samples or nil,
        encounter  = Metric("EncounterAverageTime"),
        peak       = Metric("PeakTime"),
        fps        = run.fpsN > 0 and run.fpsSum / run.fpsN or nil,
        memStart   = run.memStart,
        memEnd     = MemoryKB(),
    }
    run = nil
    RealStatsDB = RealStatsDB or {}
    RealStatsDB.perfRuns = RealStatsDB.perfRuns or {}
    table.insert(RealStatsDB.perfRuns, result)
    while #RealStatsDB.perfRuns > KEEP_RUNS do table.remove(RealStatsDB.perfRuns, 1) end

    print(string.format(L["Measurement saved: %d s, CPU average %s, highest %s."],
        result.seconds, fmt(result.cpuAvg), fmt(result.cpuMax)))
    if result.memEnd then print(string.format(L["Memory: %.0f KB"], result.memEnd)) end
    return result
end

function Perf.IsRunning() return run ~= nil end

-- Beim Ausloggen/Reload: laufende Messung noch speichern
function Perf.OnLogout()
    if run then Perf.Stop(function() end, setmetatable({}, { __index = function(_, k) return k end })) end
end
