-- Global Options
vim.g.have_nerd_font = true
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Options
vim.o.breakindent = true
vim.o.ignorecase = true
vim.o.tabstop = 2
vim.o.list = true
vim.o.mouse = 'a'
vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false
vim.o.signcolumn = 'yes'
vim.o.smartcase = true
vim.o.splitbelow = false
vim.o.splitright = true
vim.o.timeoutlen = 300
vim.o.undofile = true
vim.o.updatetime = 250
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Scheduled clipboard
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)
