local plugins = {
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
  },

  -- hilight
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "html", "css", "bash", "python" },
      auto_install = true,
    },
  },

  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- require "plugins.configs.lspconfig"
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prettier",

        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "emmet-ls",
        "json-lsp",

        -- shell
        "shfmt",
        "shellcheck",
        "bash-language-server",

        -- python
        "ruff",

        -- golang
        "gopls",
        -- solidity
        -- "solidity",

        -- rust
        "rust-analyzer",

        -- C++
        -- "clangd",
        -- "clang-format",

        -- yaml
        "yaml-language-server",

        -- docker
        "dockerfile-language-server",

        -- latex and md
        -- "ltex-ls",
      },
    },
  },
}

return plugins
