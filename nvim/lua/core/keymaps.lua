vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- vim.diagnostic.config({ virtual_text = true })

-- Cursorline
vim.o.cursorline = true
vim.o.cursorlineopt = 'number,line'

-- NO FUCKING WRAPPING PLEASE
vim.opt.wrap = false
vim.opt.textwidth = 120

-- Set indentation
vim.opt.tabstop = 4        -- A tab character appears as 4 spaces
vim.opt.shiftwidth = 4     -- Indentation levels (<< or >>) are 4 spaces
vim.opt.expandtab = true   -- Tabs are converted to spaces
vim.opt.smartindent = true -- Smart auto-indenting on new lines
vim.opt.autoindent = true  -- Copy indent from current line when starting a new line

-- Line numbers
vim.opt.number = true          -- Show absolute line number on the current line
vim.opt.relativenumber = true  -- Show relative line numbers on all other lines

-- Vertical ruler
vim.opt.ruler = true
vim.opt.colorcolumn = "80,120"

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


-- <leader>e opens oil
map("n", "<leader>e", ":Oil<CR>", opts)

map("n", "<leader>h", ":nohlsearch<CR>", opts)

map("i", "/sout",   "System.out.println<CR>", opts)

-- Vertical movement improved
map("n", "<C-u>",   "<C-u>zz", opts)
map("n", "<C-d>",   "<C-d>zz", opts)


-- Tabedit
map("n", "<A-l>",   ":tabnext<CR>", opts)
map("n", "<A-h>",   ":tabprev<CR>", opts)
map("n", "<A-Tab>", ":tabnew<CR>:Oil<CR>", opts)


-- exit
map("n", "<leader>pq", ":qa<CR>", opts)
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>aw", ":wa<CR>", opts)

map("n", "0", "_", opts)
map("n", "g0", "0", opts)

-- terminal
map("t", "<Esc>", "<C-\\><C-n>", opts)

-- movement
map("n", "§", "$", opts)
map("v", "§", "$", opts)
map("i", "§", "<Esc><S-a>", opts)

map("i", "<A-leader>", "<Esc><S-a>", opts)
