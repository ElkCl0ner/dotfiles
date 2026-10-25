local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.termguicolors = true
opt.laststatus = 3
opt.showmode = false

-- Indentation
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.smartindent = true
opt.breakindent = true

-- Navigation
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.scrolloff = 10
opt.sidescrolloff = 10
opt.wrap = false

-- Editing
opt.undofile = true
opt.confirm = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"

-- Windows
opt.splitbelow = true
opt.splitright = true

-- Responsiveness
opt.updatetime = 250
opt.timeoutlen = 400
opt.completeopt = { "menu", "menuone", "noselect" }
