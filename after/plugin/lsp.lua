local lsp = require('lsp-zero')

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

lsp.preset('recommended')
lsp.setup()

require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{
    init_options = {
    fallbackFlags = {'--std=c++20'}
  },
}

local bufopts = { noremap = true, silent = true, buffer = bufnr }

vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, bufopts)
local opts = {buffer = bufnr, remap = false}
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

