return {
	{
		"williamboman/mason.nvim",
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					"ts_ls",
					"vue_ls",
					"cssls",
					"html",
					"emmet_ls",
					"nim_langserver",
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
			})
			vim.lsp.enable("lua_ls")

			vim.lsp.config("pyright", {
				capabilities = capabilities,
			})
			vim.lsp.enable("pyright")

			vim.lsp.config("tsserver", {
				capabilities = capabilities,
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = vim.fn.stdpath("data")
								.. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
							languages = { "vue" },
						},
					},
				},
				filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
			})
			vim.lsp.enable("tsserver")

			vim.lsp.config("vue_ls", {
				capabilities = capabilities,
				filetypes = { "vue" },
				init_options = { vue = { hybridMode = true } },
			})
			vim.lsp.enable("vue_ls")

			vim.lsp.config("emmet_ls", {
				capabilities = capabilities,
				filetypes = { "html", "css", "scss", "less", "javascriptreact", "typescriptreact", "vue" },
			})
			vim.lsp.enable("emmet_ls")

			vim.lsp.config("cssls", {
				capabilities = capabilities,
				filetypes = { "css", "scss", "less" },
			})
			vim.lsp.enable("cssls")

			vim.lsp.config("html", { capabilities = capabilities })
			vim.lsp.enable("html")

			vim.lsp.config("nim_langserver", {
				capabilities = capabilities,
				settings = {
					nim = {
						nimsuggestPath = "~/.nimble/bin/nimsuggest",
						autoCheckFile = true,
						autoCheckProject = true,
						checkOnSave = true,
					},
				},
				handlers = {
					["window/showMessage"] = function(_, result, ctx, config)
						if
							result.type == vim.lsp.protocol.MessageType.Warning
							or result.type == vim.lsp.protocol.MessageType.Error
						then
							vim.lsp.handlers["window/showMessage"](_, result, ctx, config)
						end
					end,
				},
			})
			vim.lsp.enable("nim_langserver")
		end,
	},

	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
			"L3MON4D3/LuaSnip",
		},
		config = function()
			local cmp = require("cmp")
			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-Space>"] = cmp.mapping.complete(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer" },
					{ name = "path" },
				}),
			})
		end,
	},
}
