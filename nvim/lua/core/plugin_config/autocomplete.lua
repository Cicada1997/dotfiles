-- lua/core/plugin_config/autocomplete.lua

local cmp = require('cmp')
local cmp_lsp = require('cmp_nvim_lsp')

cmp.setup({
    -- ... other settings
    sources = {
        { name = 'nvim_lsp' }, -- **REQUIRED** to get suggestions from the LSP server
        -- Add other sources you use, e.g., 'luasnip', 'buffer', 'path'
        -- { name = 'luasnip' },
        -- { name = 'buffer' },
    },
    -- You should also configure keymaps here, e.g.:
    mapping = cmp.mapping.preset.insert({
        -- ['<C-o>'] = cmp.mapping.complete(),
        ['<C-o>'] = cmp.mapping.confirm({ select = true }),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-k>'] = cmp.mapping.select_prev_item(),
    }),
    -- ... other settings
})

-- local cmp = require("cmp")
--
-- cmp.setup({
--     mapping = cmp.mapping.preset.insert({
--         ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--         ['<C-f>'] = cmp.mapping.scroll_docs(4),
--
--         ['<C-o>'] = cmp.mapping.confirm({ select = true }),
--         ['<C-e>'] = cmp.mapping.abort(),
--     }),
--     snippet = {
--         expand = function(args)
--             require('luasnip').lsp_expand(args.body)
--         end,
--     },
--     sources = cmp.config.sources({
--         { name = 'nvim_lsp' },
--         { name = 'luasnip' },
--     }, {
--         { name = 'buffer' },
--     }),
-- })
--
