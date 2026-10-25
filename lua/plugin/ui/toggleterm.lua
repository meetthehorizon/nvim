-- [[ Floating terminal (toggleterm.nvim) ]]
--
-- Toggle a floating terminal with <C-\>.

vim.pack.add { Github 'akinsho/toggleterm.nvim' }

require('toggleterm').setup {
  open_mapping = [[<c-\>]], -- toggle with <C-\>
  direction = 'float',
  close_on_exit = true, -- close the float when the shell exits (e.g. `exit`)
  start_in_insert = true, -- start typing in the terminal immediately
  insert_mappings = true, -- <C-\> also works in insert mode
  terminal_mappings = true, -- <C-\> also closes the terminal from terminal mode
  float_opts = {
    border = 'curved',
  },
}
