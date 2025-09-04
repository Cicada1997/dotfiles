-- lua/core/plugin_config/oil.lua
local M = {}

function M.setup()
  require("oil").setup({
    -- turn off all of oil’s built-in keymaps so you don’t accidentally
    -- pull in the old “up” action
    use_default_keymaps = false,

    -- window dimensions
    width  = 40,
    height = 12,

    -- show hidden files by default
    show_hidden = true,

    -- your custom keymaps
    keymaps = {
      ["<CR>"] = "actions.select",         -- open file / enter dir
      ["-"]    = "actions.parent",         -- go up to parent dir
      ["<C-p>"] = "actions.preview",       -- preview a file
      ["<C-c>"] = "actions.close",         -- close the oil buffer
      ["<C-r>"] = "actions.refresh",       -- refresh the view
      ["?"]    = "actions.toggle_hidden",  -- toggle hidden files
    },

    -- any other options you like
    view_options = { show_hidden = true, is_flat = false },
  })
end

return M
