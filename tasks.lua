require("graphics")

TASKS_CONFIG = {
  { q = "C", r = "c" },
  { q = "F", r = "f" },
  { q = "G", r = "g" },
  { q = "E", r = "e" },
  { q = "U", r = "u" },
  { q = "O", r = "o" },
  { q = "GIRAF.E", a = "f" },
  { q = "CA.ROT", a = "r" },
  { q = "ELEPH.NT", a = "a", style = "orange" },
  { q = "BAN.NA", a = "a", style = "orange" },
  { q = "DO.KEY", a = "n", style = "yellow" },
  { q = "SPI.ER", a = "d", style = "yellow" },
  { q = "BUTT.RFLY", a = "e", style = "green" },
  { q = "C", a = "c", style = "green" },
  { q = "3+4", a = "7", size = 1.25, speed = 0.75, style = "red" },
  { q = "9-5", a = "4", size = 1.25, speed = 0.75, style = "red" },
  { q = "4", a = "4" },
  { q = "7", a = "7" },
}

TASKS = {}

function task_add(taskdef)
  local t = shallow_merge(TASK_DEFAULTS, taskdef)
  t.widget = widget_challenge(t.q, t.a, t.style, t.size)
  t.validator = function(txt)
    return (txt == t.a)
  end
  t.runway = FIELD_HEIGHT - t.widget.geometry[2]
  t.descend_speed = t.speed * (t.runway / ANSWER_TIMEOUT)
  t.devalue_speed = t.speed * (t.score / ANSWER_TIMEOUT)
  table.insert(TASKS, t)
end

function tasks_init()
  for i, t in ipairs(TASKS_CONFIG) do
    task_add(t)
  end
end
