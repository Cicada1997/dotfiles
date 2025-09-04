-- lua/core/plugin_config/fugitive.lua

-- nothing fancy is strictly required—vim-fugitive works out of the box.
-- But you can add keymaps or autocmds here:

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Git status
map('n', '<leader>gs', ':Gstatus<CR>', opts)
-- Git diff
map('n', '<leader>gd', ':Gdiffsplit<CR>', opts)
-- Git blame (vertical split)
map('n', '<leader>gb', ':GBrowse<CR>', opts)
-- Git commit
map('n', '<leader>gc', ':Gcommit<CR>', opts)
-- Git push
map('n', '<leader>gp', ':Gpush<CR>', opts)
-- Git pull
map('n', '<leader>gl', ':Gpull<CR>', opts)
