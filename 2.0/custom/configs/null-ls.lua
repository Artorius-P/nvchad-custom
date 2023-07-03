-- custom/configs/null-ls.lua

local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
	formatting.prettier,
	formatting.stylua,
	formatting.black,
	formatting.clang_format,
	formatting.deno_fmt,

	lint.shellcheck,
	lint.flake8,
}

null_ls.setup({
	debug = true,
	sources = sources,
})
