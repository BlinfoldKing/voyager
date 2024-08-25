require("mason").setup()

require("mason-lspconfig").setup_handlers({
	function(server_name)
		local capabilities = require("coq").lsp_ensure_capabilities({})

		require("lspconfig")[server_name].setup(capabilities)
	end,
})

vim.g.coq_settings.display = {
  icons = {
    mode = "long"
  }
}

require("mason-null-ls").setup({
	ensure_installed = { "stylua", "jsonls" },
	automatic_installation = true,
	handlers = {},
})

require("null-ls").setup({})

vim.cmd("autocmd BufWritePre * lua vim.lsp.buf.format()")
