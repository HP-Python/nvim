local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- check if packer is installed
    if packer_bootstrap then
      require('packer').sync()
    end
    -- packer can manage itself
    use 'wbthomason/packer.nvim'
    -- install and use theme
    use {'catppuccin/nvim', as = "catppuccin"}
    -- plugins
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/completion-nvim'
end)

