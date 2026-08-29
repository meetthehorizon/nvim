vim.pack.add { Github 'rose-pine/neovim' }
---@diagnostic disable-next-line: missing-fields
require('rose-pine').setup {
  styles = {
    transparency = true,
  },
  highlight_groups = {
    -- Clear backgrounds for floating windows and borders
    NormalFloat = { bg = 'NONE' },
    FloatBorder = { bg = 'NONE' },
    TelescopeNormal = { bg = 'NONE' },
    TelescopeBorder = { bg = 'NONE' },
  },
}

-- Load the colorscheme here.
vim.cmd.colorscheme 'rose-pine'
