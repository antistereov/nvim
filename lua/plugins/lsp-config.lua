return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "lua_ls", "rust_analyzer", "ts_ls", "yamlls" },
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "rust_analyzer", "ts_ls", "yamlls" }
        })

		vim.diagnostic.config({ virtual_text = true })
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local lspconfig = require('lspconfig')

        lspconfig.ts_ls.setup({
            capabilities = capabilities
        })
        lspconfig.lua_ls.setup({
            capabilities = capabilities
        })
        lspconfig.rust_analyzer.setup({
            capabilities = capabilities
        })
	end,
}
