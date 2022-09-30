local M = {}

local function bind(op, outer_opts)
    outer_opts = outer_opts or {noremap = true, silent = true}
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

M.nmap = bind("n", {noremap = false})
M.imap = bind("i", {noremap = false})
M.nnoremap = bind("n")
M.vnoremap = bind("v")
M.xnoremap = bind("x")
M.inoremap = bind("i")
M.tnoremap = bind("t")

-- keybindings in 'pop-up insert mode'
-- when there is a pop-up in insert mode, lhs will be mapped to rhs
M.pinoremap = function(lhs, rhs)
    local rhs_callable = type(rhs) == "function" and rhs or function() return rhs end
    vim.keymap.set('i', lhs, function()
        return vim.fn.pumvisible() == 1 and rhs_callable() or lhs
    end, {expr = true, silent = true})
end


return M
