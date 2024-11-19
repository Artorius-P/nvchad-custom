local nvlsp = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"

nvlsp.defaults()

local servers = {
	"html",
	"cssls",
	"jsonls",
	"denols",
	"ts_ls",
	"emmet_ls",
	-- "pyright",
  "ruff",
	"rust_analyzer",
	-- "solc",
	"clangd",
	"yamlls",
	"dockerls",
	"ltex",
	"bashls",
	"gopls",
}
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
