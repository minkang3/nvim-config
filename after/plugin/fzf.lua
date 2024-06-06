local ok, fzf = pcall(require, "fzf-lua")
if not ok then
	return
end



fzf.setup({
    winopts = {
        height = 0.8,
        width = 0.8,
        row = 0.5,
--        hl = { normal = "Pmenu" },
--        border = "none",
    },
})


-- Keymaps
local fzf = require("fzf-lua")
--vim.keymap.set('n', '<leader>pf', ":Files<CR>")
vim.keymap.set('n', '<leader>pf', fzf.files)
vim.keymap.set('n', '<leader>ps', ":lua require('fzf-lua').grep()<CR><CR>")
vim.keymap.set('n', '<leader>ph', fzf.oldfiles)

vim.keymap.set('n', '<leader>ba', fzf.buffers)
vim.keymap.set('n', '<leader>bl', fzf.lines)
vim.keymap.set('n', '<leader>l', fzf.blines)
