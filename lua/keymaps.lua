local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
-- 
local keymap = vim.keymap
-- remap space as leader key
keymap.set("", "<Space>", '<Nop>', opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

------------- insert mode -------------
keymap.set('i', 'jk', '<ESC>', opts)
------------- normal mode -------------
-- window jump
keymap.set('n', '<leader>h', '<C-w>h', opts)
keymap.set('n', '<leader>j', '<C-w>j', opts)
keymap.set('n', '<leader>l', '<C-w>l', opts)
keymap.set('n', '<leader>k', '<c-w>k', opts)
-- run python script
keymap.set('n', '<leader>r', ':!python %<CR>', opts)
---------  visaul mode ------------
-- '< first line of the last selection
-- +1 position 
-- move line
-- '> last line of the last selection
keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts)
keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)
