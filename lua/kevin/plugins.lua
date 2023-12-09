local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
 })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		dependencies = {'nvim-lua/plenary.nvim'}
	},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{
		'neovim/nvim-lspconfig',
		dependencies = {'hrsh7th/cmp-nvim-lsp'},
  },
  {
		'hrsh7th/nvim-cmp',
  },
	{ "catppuccin/nvim" },
	{ "voldikss/vim-floaterm" },
	{
		"Diogo-ss/42-header.nvim",
		lazy = false,
		config = function()
		local header = require("42header")
		header.setup({
			default_map = true, -- default Mapping <F1> in normal mode
			auto_update = true,  -- update header when saving
			user = "ketrevis", -- your user
			mail = "ketrevis@student.42.fr", -- your mail
		})
		end
	},
	{ "nvim-tree/nvim-web-devicons" },
	{ "akinsho/bufferline.nvim", config = function() require("bufferline").setup() end },
	{ "lewis6991/gitsigns.nvim", config = function() require("gitsigns").setup() end },
	{ "nvim-lualine/lualine.nvim", config = function() require("lualine").setup() end },
	{ "m4xshen/autoclose.nvim", config = function() require("autoclose").setup() end },
	{ "terrortylor/nvim-comment", config = function() require("nvim_comment").setup() end }
})
