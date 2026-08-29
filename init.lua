---@param repo string
---@return string
function Github(repo) return 'https://github.com/' .. repo end

-- 1. Core Settings
require 'config.options'
require 'config.keymaps'

-- 2. Package Management (vim.pack setup)
require 'plugin.pack'

-- 3. UI & Colorscheme
require 'plugin.ui.color'
require 'plugin.ui.which-key'

-- 4. Editor Plugins
require 'plugin.editor.treesitter'
require 'plugin.editor.telescope'
require 'plugin.editor.oil'
require 'plugin.editor.gitsigns'
require 'plugin.editor.guess-indent'
require 'plugin.editor.indent_line'

-- 5. Code & LSP
require 'plugin.code.lsp'
require 'plugin.code.conform'
require 'plugin.code.lint'
require 'plugin.code.autopairs'
require 'plugin.code.todo-comments'

-- 6. Snippets & Autocompletion
require 'plugin.snippet.luasnip'
require 'plugin.snippet.friendly-snippets'
require 'plugin.snippet.blink'

-- 7. Mini Modules

require 'plugin.mini'
require 'plugin.mini.icons'
require 'plugin.mini.statusline'
require 'plugin.mini.surround'

-- plugins
require 'plugin'
