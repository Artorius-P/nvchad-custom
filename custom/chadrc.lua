-- Just an example, supposed to be placed in /lua/custom/

local M = {}

local override = require "custom.plugins.override"
local userPlugins = require "custom.plugins"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "onenord",
   theme_toggle = {"onenord", "gruvchad"},
   transparency = false,
}

M.options = {
   user = function()
      vim.opt.rnu = true
      vim.opt.nu = true
      vim.opt.clipboard:prepend {"unnamedplus"}
   end,
}

M.plugins = {
  user = userPlugins,

  override = {
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["hrsh7th/nvim-cmp"] = require "custom.plugins.cmp",
  }

}

M.mappings = require "custom.mappings"

return M
