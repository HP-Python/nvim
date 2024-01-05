require('options')
require('plugins')
require('keymaps')

vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]])

-- vim.cmd("colorscheme tokyonight-night")
vim.cmd('colorscheme nightfly')

