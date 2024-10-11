return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
	local mason = require("mason")
	local masonlspconfig = require("mason-lspconfig")

	mason.setup()
	masonlspconfig.setup({
	    ensure_installed = { "jdtls" , "rust_analyzer", "clangd" }
	})
    end,
}
