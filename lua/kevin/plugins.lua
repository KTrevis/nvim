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
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.3', dependencies = {'nvim-lua/plenary.nvim'} },
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{ 'neovim/nvim-lspconfig', dependencies = {'hrsh7th/cmp-nvim-lsp'}, },
	{ 'hrsh7th/nvim-cmp', dependencies = {'L3MON4D3/LuaSnip'} },
	{ "catppuccin/nvim" },
	{ "nvim-tree/nvim-web-devicons" },
	{ "lewis6991/gitsigns.nvim", config = function() require("gitsigns").setup() end },
	-- { "nvim-lualine/lualine.nvim", config = function() require("lualine").setup() end },
	{ "m4xshen/autoclose.nvim", config = function() require("autoclose").setup() end },
	{ "terrortylor/nvim-comment", config = function() require("nvim_comment").setup() end },
	{ "nvim-tree/nvim-tree.lua", config = function() require("nvim-tree").setup() end },
	{ "romgrk/barbar.nvim", config = function() require("barbar").setup() end },
	{"nvim-treesitter/nvim-treesitter", config = function() require("nvim-treesitter.configs").setup({
		highlight = {enable=true}
	}) end },
	{ "mg979/vim-visual-multi" },
})
