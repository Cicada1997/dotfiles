local lspconfig = require("lspconfig")

local servers = { "lua_ls", "clangd", "ast_grep" }

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = servers
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(_, _)
    local opts = { noremap=true, silent=true }
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
end

for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

