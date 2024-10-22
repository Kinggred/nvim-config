vim.api.nvim_set_keymap(
	"i",
	"<Tab>",
	[[coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"]],
	{ silent = true, expr = true }
)
vim.api.nvim_set_keymap(
	"i",
	"<CR>",
	[[coc#pum#visible() ? coc#pum#confirm() : "\<CR>"]],
	{ silent = true, expr = true }
)
