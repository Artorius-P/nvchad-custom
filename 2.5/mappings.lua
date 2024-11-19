require "nvchad.mappings"
-- Define the copymode function
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

-- Set up the key mapping function
local map = vim.keymap.set

-- Normal mode mappings
map("n", "<leader>cc", "<cmd>Telescope<CR>", { desc = "   Telescope" })
map("n", "<F8>", copymode, { desc = "  Change to copy mode" })
map("n", "<leader>n", copymode, { desc = "  Change to copy mode" })
map("n", "<leader>fm", function()
  local api_level = vim.version()["api_level"]
  if api_level < 10 then
    vim.lsp.buf.formatting()
  else
    vim.lsp.buf.format()
  end
end, { desc = "LSP formatting" })
map("n", "<F2>", "<cmd>NvimTreeToggle<CR>", { desc = "   Toggle NvimTree" })

-- Visual mode mappings
map("v", "<C-C>", '"+y', { desc = "   Copied to system clipboard" })

-- No mappings to disable

