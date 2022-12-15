local override = require "custom.plugins.override"
return {
  ["sbdchd/neoformat"] = {},
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["ray-x/cmp-treesitter"] = {
    after = "cmp-path",
  },
  ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
  ["williamboman/mason.nvim"] = {override_options=require "custom.plugins.mason"},
  ["hrsh7th/nvim-cmp"] = override.nvimcmp,
  ["nvim-treesitter/nvim-treesitter"] = require "custom.plugins.nvim-treesitter",
  -- ["goolord/alpha-nvim"] = {
  -- after = "base46",
  -- disable = false,
  -- config = function()
  -- require "plugins.configs.alpha"
  -- end,
  -- },
  }
