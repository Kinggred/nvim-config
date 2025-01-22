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
	-- DEPENDENCIES --
	{
		"nvim-lua/plenary.nvim",
	},
	{
		"nvim-treesitter/nvim-treesitter",
	},
    {
        "antosha417/nvim-lsp-file-operations",
    },
	-- MOVEMENT --
	{
		"nvim-telescope/telescope.nvim", -- Search for file
	},
	{
		"ThePrimeagen/harpoon", -- Jump to file
	},
	-- THEMES --
	{
		"folke/tokyonight.nvim",
	},
	-- LSP --
	{
		"hrsh7th/nvim-cmp",
	},
    {
        "hrsh7th/cmp-path",
    },
	{
		"hrsh7th/cmp-buffer",
	},
	{
		"neovim/nvim-lspconfig",
	},
    {
        'hrsh7th/cmp-nvim-lsp',
    },
    {
		"hrsh7th/cmp-nvim-lua",
	},
	{
		"williamboman/mason.nvim",
	},
	{
		"williamboman/mason-lspconfig.nvim",
	},
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
    },
	-- -- Language Specific -- --
	-- Python --
	-- Java --
	{
		-- "georgewfraser/java-language-server",
	},
	{
		--"mfussenegger/nvim-jdtls",
	},
	-- Golang --
	-- QOL --
	{
		"nvim-treesitter/nvim-treesitter-context",
	},
	{
		"mbbill/undotree", -- Essentially an file change history
	},
	--{
	--	"m4xshen/autoclose.nvim", -- Self close brackets etc.
	--},
	{
		"lewis6991/gitsigns.nvim",
	},
	{
		"folke/trouble.nvim", -- Diplay full errors
	},
	{
		"L3MON4D3/LuaSnip", -- Snippets
	},
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
    },
	-- OTHER --
})
