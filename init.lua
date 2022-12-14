require("floorrip")
vim.g.coq_settings = { auto_start = 'shut-up', ["keymap.recommended"] = false, ["keymap.jump_to_mark"] = "<C-;>" }

require('lualine').setup({
    options = {theme = 'tokyonight'}
})

local textcase = require('textcase')
textcase.setup()

vim.cmd('source ~/.config/nvim/skk.vim')
