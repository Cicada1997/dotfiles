require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "python", "rust", "vim" },
    sync_install = false,
    auto_install = false,
    highlight = {
        enable = true
    }
}
