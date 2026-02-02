return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		-- 👇 THIS is the key fix
		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
			pattern = { "*/charts/*/templates/*.yaml", "*/charts/*/templates/*.yml" },
			callback = function()
				vim.bo.filetype = "helm"
			end,
		})

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				bash = { "shfmt" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
				filter = function(bufnr)
					local filename = vim.api.nvim_buf_get_name(0)

					-- Skip Helm templates (not valid YAML for prettier)
					if filename:match("/charts/.+/templates/.+%.ya?ml$") then
						return false
					end
					return true
				end,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
