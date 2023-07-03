local M = {}

M.plugins = "custom.plugins"


M.ui = {
  theme = "onenord",
  theme_toggle = { "onenord", "gruvchad" },
  transparency = false,
}

M.mappings = require "custom.mappings"

return M
