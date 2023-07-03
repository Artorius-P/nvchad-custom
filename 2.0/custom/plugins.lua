local plugins = {

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
		dependencies = {
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("custom.configs.null-ls")
			end,
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
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
				"flake8",
				"pyright",
				"black",

				-- golang
				"gopls",
				-- solidity
				-- "solidity",

				-- rust
				"rust-analyzer",

				-- C++
				"clangd",
				"clang-format",

				-- yaml
				"yaml-language-server",

				-- docker
				"dockerfile-language-server",

				-- latex and md
				"ltex-ls",
			},
		},
	},
}

return plugins
