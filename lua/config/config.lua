require("neoconf").setup({
	local_settings = ".neoconf.json",
	global_settings = "neoconf.json",
	import = {
		vscode = true,
		coc = true,
		nlsp = true,
	},
	live_reload = true,
	filetype_jsonc = true,
	plugins = {
		lspconfig = {
			enabled = true,
		},
		jsonls = {
			enabled = true,
			configured_servers_only = true,
		},
		lua_ls = {
			enabled_for_neovim_config = true,
			enabled = false,
		},
	},
})

vim.cmd("tnoremap <Esc> <C-\\><C-n>")
vim.cmd("set clipboard+=unnamedplus")
