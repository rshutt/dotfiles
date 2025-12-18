return {
	name = "lua_ls",
	cmd = { "lua-language-server" },
	filetypes = { "lua" },

	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			hint = { enable = true },
			codeLens = { enable = true },
			workspace = {
				checkThirdParty = false,
				library = {
					vim.fn.expand("$VIMRUNTIME/lua"),
					vim.fn.stdpath("config") .. "/lua",
				},
			},
		},
	},
}
