require("config")

STATS_START = {
  wins = 0,
  losses = 0,
  visible = 0,
  --pending = 0,
  --total = 0,
  active = 0,
  changes = 0,
  score = 0,
  score_max = 0,
  time = 0,
}

stats = setmetatable({}, {
  __index = function()
    return 0
  end,
})

function stats_reset(total)
  stats.total = total or MAX_SLOTS
  stats.pending = stats.total
  for k, v in pairs(STATS_START) do
    stats[k] = v
  end
end

function stats_add(name, step)
  step = step or 1
  local new_val = stats[name] + step
  stats[name] = new_val
  return new_val
end

function stats_settled()
  local active_count = stats.pending + stats.visible
  return (active_count == 0)
end

stats_events = action_map({
  launched = function(score)
    stats_add("visible")
    stats_add("pending", -1)
    stats_add("max_score", score)
    sfx.ping()
    --sfx.knock()
  end,
  solved = function(score)
    stats_add("wins")
    stats_add("score", score)
    sfx.shot()
    -- sfx.pew()
    -- sfx.win()
    -- sfx.wow()
    -- sfx.shot()
    -- sfx.correct()
  end,
  expired = function()
    stats_add("losses")
    stats_add("visible", -1)
    sfx.boom()
    -- sfx.wrong()
    -- sfx.lose()
  end,
  cleared = function() -- post-win animation ended
    stats_add("visible", -1)
  end,
})

stats_event_registrator = function(e, ...)
  stats_add("changes")
  stats_events[e](...)
end
