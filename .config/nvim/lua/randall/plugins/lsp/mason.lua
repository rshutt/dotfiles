return {
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
			automatic_enable = {
				exclude = {
					"jdtls",
				},
			},
			-- list of servers for mason to install
			ensure_installed = {
				"lua_ls",
				"sqls",
				"sqlls",
				"clangd",
				"dockerls",
				"ruff",
				"gopls",
				"golangci_lint_ls",
				"yamlls",
				"vimls",
				"marksman",
				"prosemd_lsp",
				"remark_ls",
				"bashls",
				"ts_ls",
				"helm_ls",
				"ansiblels",
				"arduino_language_server",
				"djlsp",
				"eslint",
				"groovyls",
				"jdtls",
				"jinja_lsp",
				"jqls",
				"jsonls",
				"oxlint",
				"pyright",
				"quick_lint_js",
				"rpmspec",
				"stylua",
				"systemd_ls",
				"terraformls",
				"tflint",
				"vimls",
				--			"pyink",
				--			"golangci-lint",
				--			"intelephense",
				--			"pylama",
				--			"markdown-oxide",
				--			"markdown-toc",
				--			"yamlfmt",
				--			"awk-language-server",
				--			"pyment",
				--			"lemminx",
				--			"goimports",
				--			"vint",
				--			"standardjs",
				--			"jsonnet-language-server",
				--			"diagnostic-languageserver",
				--			"xmlformatter",
			},
		},
		dependencies = {
			{
				"williamboman/mason.nvim",
				opts = {
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗",
						},
					},
				},
			},
			"neovim/nvim-lspconfig",
			"mfussenegger/nvim-jdtls",
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"shfmt",
				"tflint",
				"yamllint",
				"flake8",
				"ansible-lint",
				"shellcheck",
				"pylint",
			},
		},
		dependencies = {
			"williamboman/mason.nvim",
		},
	},
}
