local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'},
    {name = 'luasnip'},
    {name = 'path'}
  },

  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    -- Simple tab complete
    ['<Tab>'] = cmp.mapping.confirm({select = true}),
    -- Go to previous item
    ['<S-Tab>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
  }),
})


cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
