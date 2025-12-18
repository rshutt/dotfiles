return {
	"tpope/vim-fugitive",
	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<leader>gd", "<cmd>Gvdiff!<CR><C-w><UP>", { desc = "Git diff vertical split" })
		keymap.set("n", "gdh", "<cmd>diffget //2<CR>]c<CR>", { desc = "Git merge accept head this chunk" })
		keymap.set("n", "gdl", "<cmd>diffget //3<CR>]c<CR>", { desc = "Git merge accept leaf this chunk" })
		keymap.set("n", "<leader>gr", "<cmd>Git rebase --continue<CR>", { desc = "Git continue rebasing" })
		keymap.set("n", "<leader>gw", "<cmd>Gw!<CR>", { desc = "Git write" })
		keymap.set("n", "<leader>gs", "<cmd>G<CR>:10wincmd_<CR>", { desc = "Git status" })
	end,
}
