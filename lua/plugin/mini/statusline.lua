local statusline = require 'mini.statusline'
statusline = {
  use_icons = vim.g.have_nerd_font,
  section_location = function() return '%2l:%-2v' end,
}
