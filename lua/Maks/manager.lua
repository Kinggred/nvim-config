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
		"nvim-lua/plenary.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
	},
	{
		"catppuccin/nvim",
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"nvim-treesitter/nvim-treesitter",
	},
	{
		"ThePrimeagen/harpoon",
	},
	{
		"mbbill/undotree",
	},
	{
		"neovim/nvim-lspconfig",
	},
	{
		"hrsh7th/nvim-cmp",
	},
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"hrsh7th/cmp-buffer",
	},
	{
		"hrsh7th/cmp-path",
	},
	{
		"hrsh7th/cmp-nvim-lua",
	},
	{
		"L3MON4D3/LuaSnip",
	},
	{
		"VonHeikemen/lsp-zero.nvim",
	},
	{
		"williamboman/mason.nvim",
	},
	{
		"williamboman/mason-lspconfig.nvim",
	},
	{
		"nvimtools/none-ls.nvim",
	},
	{
		"georgewfraser/java-language-server",
	},
	{
		"m4xshen/autoclose.nvim",
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
	},
	{
		"lewis6991/gitsigns.nvim",
	},
	{
		"mfussenegger/nvim-jdtls",
	},
	{
		"fatih/vim-go",
	},
    {
        "neoclide/coc.nvim", build = "npm install"
    },
})
