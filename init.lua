require("floorrip")
vim.g.coq_settings = { auto_start = true, ["keymap.recommended"] = false, ["keymap.jump_to_mark"] = "<C-,>" }

require('lualine').setup({
    options = {theme = 'solarized_light'}
})

local textcase = require('textcase')
textcase.setup()
