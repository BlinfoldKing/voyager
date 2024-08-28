vim.api.nvim_set_keymap("n", "tt", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })

local wk = require("which-key")
wk.setup()

wk.add({
	{ "<space>s", group = "save" },
	{ "<space>f", group = "find" },
	{ "<space>l", group = "lsp" },
	{ "<space>g", group = "git" },
	{ "<space>t", group = "terminal" },
	{ "<space>w", group = "window" },
	{ "<space>c", group = "config" },
	{ "<space>q", group = "quit" },
})

local keymaps = {
	-- save
	-- terminal
	{ key = "tt", command = "<cmd>ToggleTerm direction=float<cr>", desc = "float" },
	{ key = "th", command = "<cmd>ToggleTerm size=20 direction=horizontal<cr>", desc = "horizontal" },
	{ key = "tv", command = "<cmd>ToggleTerm size=50 direction=vertical<cr>", desc = "vertical" },
	-- lsp
	{ key = "lh", command = "<cmd>Lspsaga peek_definition<cr>", desc = "hover definition" },
	{ key = "lr", command = "<cmd>Lspsaga rename<cr>", desc = "rename" },
	{ key = "lf", command = "<cmd>Lspsaga finder<cr>", desc = "go to definition" },
	{ key = "lg", command = "<cmd>Lspsaga goto_definition<cr>", desc = "find symbol" },
	{ key = "lo", command = "<cmd>Lspsaga outline<cr>", desc = "find symbol" },
	-- find
	{ key = "ff", command = "<cmd>Telescope find_files<cr>", desc = "search files" },
	{ key = "fb", command = "<cmd>Telescope buffers<cr>", desc = "search buffers" },
	{ key = "fp", command = "<cmd>Telescope live_grep<cr>", desc = "search files' contents" },
	-- config
	{ key = "cr", command = "<cmd>source ~/.config/nvim/.vimrc<cr>", desc = "reload .vimrc" },
	{ key = "ce", command = "<cmd>edit ~/.config/nvim/.vimrc<cr>", desc = "edit .vimrc" },
	-- quit
	{ key = "q", command = "<cmd>qa!<cr>", desc = "close all and exit" },
}

for i, keymap in ipairs(keymaps) do
	vim.api.nvim_set_keymap("n", "<space>" .. keymap.key, keymap.command, { noremap = true, silent = true })
	vim.api.nvim_set_keymap("v", "<space>" .. keymap.key, keymap.command, { noremap = true, silent = true })

	if keymap.desc == nil then
		goto continue
	end

	wk.add({
		{ "<space>" .. keymap.key, desc = keymap.desc },
	})

	::continue::
end
