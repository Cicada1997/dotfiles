require('mason').setup({
    ui = {
        border = "rounded",
    }
})

local on_attach = function(client, bufnr)
    client.server_capabilities.completionProvider = {
        resolveProvider = false,
        triggerCharacters = { ".", ":", ">", "<", "/", "\"" }, -- customize as needed
    }

    local lsp_keymaps = {
        ['gd']         = { '<cmd>Telescope lsp_definitions<CR>', 'Go to Definition' },
        ['gr']         = { '<cmd>Telescope lsp_references<CR>', 'Go to References' },
        ['gD']         = { vim.lsp.buf.declaration, 'Go to Declaration' },
        ['gi']         = { '<cmd>Telescope lsp_implementations<CR>', 'Go to Implementations' },
        ['gt']         = { '<cmd>Telescope lsp_type_definitions<CR>', 'Go to Type Definition' },
        ['<leader>rn'] = { vim.lsp.buf.rename, 'Rename' },
        ['<leader>ca'] = { vim.lsp.buf.code_action, 'Code Action' },
        ['K']          = { vim.lsp.buf.hover, 'Hover Documentation' },
        ['[d']         = { vim.diagnostic.goto_prev, 'Go to previous diagnostic' },
        [']d']         = { vim.diagnostic.goto_next, 'Go to next diagnostic' },
        ['<leader>f']  = { function() vim.lsp.buf.format { async = true } end, 'Format Buffer' },
    }

    for key, action in pairs(lsp_keymaps) do
        vim.keymap.set('n', key, action[1], { buffer = bufnr, desc = action[2] })
    end
end

local server_overrides = {
    rust_analyzer = {
        settings = {
            ['rust-analyzer'] = {
                check = {
                    command = "clippy",
                },
            },
        },
    },
}

require('mason-lspconfig').setup({
    ensure_installed = {
        "rust_analyzer", "pyright", "jinja_lsp", "html", "lua_ls", "cssls",
    },
    handlers = {
        function(server_name)
            local opts = {
                on_attach = on_attach,
                capabilities = require('cmp_nvim_lsp').default_capabilities(),
            }

            local override = server_overrides[server_name]
            if override then
                vim.tbl_deep_extend("force", opts, override)
            end

            require('lspconfig')[server_name].setup(opts)
        end,
    },
})

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = false,
    float = {
        source = "always",
    },
})
