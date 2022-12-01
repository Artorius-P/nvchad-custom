-- example file i.e lua/custom/init.lua

-- MAPPINGS
-- require("my autocmds file") or just declare them here

local M = {}

local copymode = function()
  vim.cmd [[set nu!]]
  vim.cmd [[set rnu!]]
  if vim.opt.mouse:get().a then
    vim.cmd [[set mouse=]]
    print "You can use system copy now!"
  else
    vim.cmd [[set mouse=a]]
    print "Return to visual mode!"
  end
end
M.disable = {}

M.myconfig = {
  n = {
    ["<leader>cc"] = { ":Telescope <CR>", "   Telescope" },
    ["<leader>q"] = { ":q <CR>", "   exit" },
    ["<F3>"] = { "<cmd> Neoformat <CR>", "   Neoformat" },
    -- ["<leader>fm"] = {"<cmd> Neoformat <CR>", "   Neoformat"},
    ["<F8>"] = { copymode, "  change to copy mode" },
  },

  v = {
    ["<C-C>"] = { '"+y', "   Copyed to System Clipboard" },
  },
}

M.override = {
  n = {
    ["<leader>n"] = { copymode, "  change to copy mode" },
    ["<leader>fm"] = {
      function()
        local api_level = vim.version()["api_level"]
        if api_level < 10 then
          vim.lsp.buf.formatting()
        else
          vim.lsp.buf.format()
        end
      end,
      "lsp formatting",
    },
  },
}

M.nvimtree = {
  n = {
    ["<F2>"] = { "<cmd> NvimTreeToggle <CR>", "   Toggle nvimtree" },
  },
}

return M
