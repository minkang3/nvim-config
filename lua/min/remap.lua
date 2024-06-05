vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--vim.keymap.set("n", "<leader>b", ":ls<CR>:b<Space>")

vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>")

-- FZF Remaps
local fzf = require("fzf-lua")
--vim.keymap.set('n', '<leader>pf', ":Files<CR>")
vim.keymap.set('n', '<leader>pf', fzf.files)
vim.keymap.set('n', '<leader>ps', ":lua require('fzf-lua').grep()<CR><CR>")
vim.keymap.set('n', '<leader>ph', fzf.oldfiles)

vim.keymap.set('n', '<leader>ba', fzf.buffers)
vim.keymap.set('n', '<leader>bl', fzf.lines)
vim.keymap.set('n', '<leader>l', fzf.blines)
