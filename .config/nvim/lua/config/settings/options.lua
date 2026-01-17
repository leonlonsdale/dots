-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- UI
vim.opt.termguicolors = true
vim.opt.showcmd = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.winborder = "rounded"
-- vim.opt.cursorcolumn = true

-- Wrapping
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
-- vim.opt.showbreak = "↪ "

-- Appearance
vim.opt.shortmess:append("W")
vim.opt.fillchars = { eob = " " }

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.splitkeep = "cursor"

-- Search
vim.opt.hlsearch = true

-- Signs & Cmdline
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 0

-- Indentation
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
-- vim.opt.list = true
-- vim.opt.listchars:append("tab:· ")
-- vim.opt.listchars:append("space:·")

-- Scrolling
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5

-- Behavior
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.formatoptions:append({ "r" })

-- Performance
vim.opt.updatetime = 300

-- Syntax
vim.cmd("syntax enable")

-- Matching
vim.opt.showmatch = true

-- LSP
vim.diagnostic.config({ virtual_text = true })

