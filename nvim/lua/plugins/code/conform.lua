return {
	"stevearc/conform.nvim",
	opts = function()
		local opts = {
			formatters_by_ft = {
				css = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				vue = { "prettier" },
				lua = { "stylua" },
				nim = { "nimpretty" },
			},
			formatters = {
				prettier = {
					command = "prettier",
					args = { "--stdin-filepath", "$FILENAME" },
					stdin = true,
				},
				nimpretty = {
					command = "nimpretty", 
					args = { "$FILENAME" }, 
					stdin = false, 
				},
				stylua = {
					command = "stylua",
					args = { "--search-parent-directories", "--stdin-filepath", "$FILENAME", "-" },
					stdin = true,
				},
			},
		}

		vim.keymap.set("n", "<leader>cf", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, { desc = "Format file" })

		return opts
	end,
}
