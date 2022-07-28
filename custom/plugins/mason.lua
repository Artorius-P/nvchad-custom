local M = {}

M.ensure_installed = {
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

  -- python
  "flake8",
  "pyright",

  -- solidity
  "solidity",

  -- rust
  "rust-analyzer",

  -- C++
  "clangd"
}

return M
