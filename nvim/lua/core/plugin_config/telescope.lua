local builtin = require('telescope.builtin')

-- open new windows automation
-- local function exec_and_fuzzy(command)
--     vim.cmd(command)
--
--     if command == "split" then
--         vim.cmd("windcmd j")
--
--     elseif command == "vsplit" then
--         vim.cmd("windcmd l")
--
--     end
--
--     builtin.find_files()
-- end

vim.keymap.set("n", "<leader>pf", builtin.find_files, { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>pt", function() exec_and_fuzzy("tabedit") end, { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>s", function() exec_and_fuzzy("vsplit") end, { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>v", function() exec_and_fuzzy("split") end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>o", builtin.oldfiles, { noremap = true, silent = true })
