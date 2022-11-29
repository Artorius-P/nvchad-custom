local M = {}

M.nvimtree = {
  override_options = {
    git = {
      enable = true,
    },
    diagnostics = {
      enable = true,
    },
  },
}

M.nvimcmp = {
  override_options = function()
    local cmp = require "cmp"

    return {
      mapping = {
        ["<C-f>"] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        },
        ["<C-s>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
      },
      sources = {
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
        { name = "treesitter" },
      },
    }
  end,
}

return M
