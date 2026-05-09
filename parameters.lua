MAX_SLOTS = 12
--MAX_SLOTS = 5

-- bigger timeout -- slower descending
ANSWER_TIMEOUT = 10
-- smaller launch delay may trigger overlaps
LAUNCH_DELAY = 4

ANIMATION_TIME = 2 -- 1.5
MAX_ASCEND_TIME = 2 -- 3

WELCOME_MESSAGE = "Baloons game"
WELCOME_SUBHEADER = "Type answers to release baloons"
STARTING_PROMPT = "Type answer and <Enter>"
GAME_PROMPT = "Your answer: <%s>"
STATS_TEMPLATE = "Solved: %s/%s | Score: %s | Time: %ds"
STATUS_TEMPLATE = "Solved: %s | Missed: %s | Active: %s | Pending: %s | Score: %s | Time: %ds"

GAME_OVER_HEADER = "Game Over"
SPLASH_HINT_BASE = "Type <start>"
SPLASH_HINT_START = "To start: " .. SPLASH_HINT_BASE
SPLASH_HINT_RESTART = "To restart: " .. SPLASH_HINT_BASE

SCREEN_VPAD = 0.1
DEFAULT_BALLOON_RADIUS = 40 --24

FONT_SIZES = {
  h1 = 64,
  h2 = 32,
  h3 = 28,
  h4 = 20,
  h5 = 16,
  h6 = 14,
  default = 12,
  small = 10,
}

TASK_DEFAULTS = {
  score = 10,
  size = 1,
  style = "blue",
  speed = 1,
}
