-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { 
  "html",
  "cssls",
  "jsonls",
  "denols",
  "tsserver",
  "pyright",
  "rust_analyzer",
  "solc",
  "clangd",
  }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
