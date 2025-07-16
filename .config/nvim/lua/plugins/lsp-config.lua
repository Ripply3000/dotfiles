return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		--opts = {
		--    auto_install = true
		--},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"phpactor",
					"bashls",
					"marksman",
					"ansiblels",
					"eslint",
					-- "tsserver",
					"cssls",
					-- "volar",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
            local capabilities = require("blink-cmp").get_lsp_capabilities()
			-- local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.phpactor.setup({ capabilities = capabilities })
			lspconfig.bashls.setup({ capabilities = capabilities })
			lspconfig.marksman.setup({ capabilities = capabilities })
			lspconfig.ansiblels.setup({ capabilities = capabilities })
			lspconfig.eslint.setup({ capabilities = capabilities })
			-- lspconfig.tsserver.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			--lspconfig.stimulus_ls.setup({capabilities = capabilities})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
