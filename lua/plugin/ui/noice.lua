-- [[ Noice: floating cmdline + messages ]]
--
-- Replaces the default bottom `:` command-line with a floating popup and
-- routes messages/errors to notifications. Requires nui.nvim (rendering)
-- and nvim-notify (notification view).

vim.pack.add {
  Github 'folke/noice.nvim',
  Github 'MunifTanjim/nui.nvim',
  Github 'rcarriga/nvim-notify',
}

-- NormalFloat is transparent (bg = NONE), so nvim-notify has no background to
-- blend toward when fading. Point it at rose-pine's base colour explicitly.
require('notify').setup {
  background_colour = '#191724',
}

require('noice').setup {
  presets = {
    bottom_search = true, -- keep `/` and `?` as classic bottom search
    long_message_to_split = true, -- long output opens in a split instead of a popup
  },
}
