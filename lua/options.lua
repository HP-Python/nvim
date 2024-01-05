local opt = vim.opt

-- : help options
opt.backup = false
opt.clipboard = "unnamedplus"
opt.cmdheight = 2
opt.completeopt = { "menuone", "noselect" }
opt.fileencoding = "utf-8"
opt.ignorecase = true
opt.smartcase = true
opt.showmode = true
opt.showtabline = 2
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.updatetime = 300
opt.writebackup = false
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
-- scroll
opt.scrolloff = 8 -- usefull
opt.sidescrolloff = 8
opt.guifont = "monospace:h17"

opt.shortmess:append "c"

opt.whichwrap:append( "<,>,[,],h,l" )

-- UI config
opt.relativenumber = true
opt.number = true
opt.numberwidth = 2
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true -- highlight the cursor line
opt.wrap = false
opt.background = 'dark'

-- window split
opt.splitright = true
opt.splitbelow = true

-- search


