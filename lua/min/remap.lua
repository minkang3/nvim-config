-- Leader Button
vim.g.mapleader = " "
vim.keymap.set("n", "<Space>", "<NOP>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Visual Mode Keymaps
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")
--vim.keymap.set('v', "<leader>p", "\"_dP")
vim.keymap.set('v', "p", "\"_dP")

vim.keymap.set('v', 'H', "^")
vim.keymap.set('v', 'L', "$")

-- Normal Mode Keymaps
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

vim.keymap.set("n", "J", "5jzz")
vim.keymap.set("n", "K", "5kzz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


--vim.keymap.set("n", "<leader>b", ":ls<CR>:b<Space>")

vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>")


vim.keymap.set('n', "<C-d>", "<C-d>zz")
vim.keymap.set('n', "<C-u>", "<C-u>zz")

vim.keymap.set('n', "<C-e>", "2<C-e>")
vim.keymap.set('n', "<C-y>", "2<C-y>")

vim.keymap.set('n', "<C-j>", "2<C-e>")
vim.keymap.set('n', "<C-k>", "2<C-y>")

vim.keymap.set('n', "<leader>\\", ":LspStop<CR>")
