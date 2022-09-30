local nnoremap = require("floorrip.keymap").nnoremap
local tnoremap = require("floorrip.keymap").tnoremap
local pinoremap = require("floorrip.keymap").pinoremap
local imap = require("floorrip.keymap").imap

vim.g.mapleader = " "

nnoremap("<leader>pv", "<cmd><Ex><CR>")

tnoremap("<C-h>", "<C-w>h")
tnoremap("<C-j>", "<C-w>j")
tnoremap("<C-k>", "<C-w>k")
tnoremap("<C-l>", "<C-w>l")
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")




-- keybindings in 'pop-up insert mode'
-- when there is a pop-up in insert mode, lhs will be mapped to rhs
pinoremap("<Esc>", "<C-e><Esc>")
pinoremap("<Tab>", "<C-n>")
pinoremap("<BS>", "<C-e><BS>")
pinoremap("<CR>", function() return vim.fn.complete_info().selected == -1 and "<C-e><CR>" or "<C-y>" end)
pinoremap("<Tab>", "<C-n>")
pinoremap("<S-Tab>", "<C-p>")

-- keybindings for japanese input

-- terminal should map the kana key to <C-\>
-- doing it like this since it's too hard to
-- send the kana key to vim
imap("<C-\\>", "<Plug>(skkeleton-toggle)")
