return {
	"navarasu/onedark.nvim",
	priority = 1000,
	config = function()
		local transparent = false

		require("onedark").setup({
			style = "dark",
			transparent = transparent,
			hideInactiveStatusline = "true",
			customTelescope = "true",

			lualine = {
				transparent = transparent,
			},
		})

		vim.cmd("colorscheme onedark")
		vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#31353f" })
		vim.api.nvim_set_hl(0, "CursorLine", { underline = true })
	end,
}
