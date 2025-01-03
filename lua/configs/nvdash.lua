local header = {
  "█▀█ █▀█ █ ▀█▀ █░█ █░█ █   ▀▄▀",
  "█▀▀ █▀▄ █ ░█░ █▀█ ▀▄▀ █   █░█",
  "                             ",
}

local M = {
  load_on_startup = true,
  header = header,
  buttons = {
    { txt = " Fuck it!", keys = "fk", cmd = ":q" },
  },
}

return M
