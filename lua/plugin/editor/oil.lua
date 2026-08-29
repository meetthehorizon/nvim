-- Add oil.nvim package
vim.pack.add {
  'https://github.com/stevearc/oil.nvim',
}

-- Oil configuration
require('oil').setup {
  default_file_explorer = true, -- Replaces netrw completely
  delete_to_trash = true,
  skip_confirm_for_simple_edits = true,
  view_options = {
    show_hidden = true,
  },
  keymaps = {
    ['g?'] = { 'actions.show_help', mode = 'n' },
    ['<CR>'] = 'actions.select',
    ['<C-s>'] = { 'actions.select', opts = { vertical = true } },
    ['<C-h>'] = false,
    ['<C-t>'] = false,
    ['<C-p>'] = 'actions.preview',
    ['<C-c>'] = { 'actions.close', mode = 'n' },
    ['<C-l>'] = false,
    ['-'] = { 'actions.parent', mode = 'n' },
    ['_'] = { 'actions.open_cwd', mode = 'n' },
    ['`'] = { 'actions.cd', mode = 'n' },
    ['g~'] = { 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
    ['gs'] = { 'actions.change_sort', mode = 'n' },
    ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
    ['gt'] = { 'actions.toggle_trash', mode = 'n' },
  },
}

-- Open parent directory with '-'
vim.keymap.set('n', '-', '<Cmd>Oil<CR>', { desc = 'Open parent directory in Oil' })
