-- Make mise-managed tools (LSP servers, formatters, linters) available even
-- when nvim is launched outside a shell with mise activated (e.g. from a
-- desktop entry or GUI). All tools are declared in mise.toml at the repo root.
local sep = vim.fn.has 'win32' == 1 and ';' or ':'
vim.env.PATH = table.concat({ vim.fn.expand '~/.local/share/mise/shims', vim.env.PATH }, sep)

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
