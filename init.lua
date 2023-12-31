require('options')
require('plugins')
require('keymaps')

-- lsp config
local lspconfig = require'lspconfig'
lspconfig.pyright.setup{}

-- 
vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]])

-- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
vim.cmd.colorscheme "catppuccin-mocha"

