return {
	"folke/neodev.nvim",
	"nvim-lua/plenary.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },

	-- languages
	{ import = "config.lazy.plugins.coq" },
	"williamboman/mason.nvim",
	"nvim-treesitter/nvim-treesitter",
	"williamboman/mason-lspconfig.nvim",
	"jay-babu/mason-null-ls.nvim",
	"nvimtools/none-ls.nvim",
	{ import = "config.lazy.plugins.lspsaga" },

	-- text editting
	"numToStr/Comment.nvim",
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
	},

	-- git
	"tpope/vim-fugitive",
	"lewis6991/gitsigns.nvim",
	"sindrets/diffview.nvim",
	"akinsho/git-conflict.nvim",

	-- editor
	"karb94/neoscroll.nvim",
	"nvim-tree/nvim-web-devicons",
	"nvim-tree/nvim-tree.lua",
	"nvim-lualine/lualine.nvim",
	{
		"romgrk/barbar.nvim",
		init = function()
			vim.g.barbar_auto_setup = true
		end,
	},
	{ "ms-jpq/chadtree" },
	{ "nvim-telescope/telescope.nvim", tag = "0.1.8" },
	{ import = "config.lazy.plugins.noice" },
	"akinsho/toggleterm.nvim",

	-- keymap and control
	{ "folke/which-key.nvim", event = "VeryLazy", opts = { sort = { "manual" } } },

	-- colorschemes
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
	"sainnhe/sonokai",
	"sainnhe/gruvbox-material",
	"jacoborus/tender.vim",
}
