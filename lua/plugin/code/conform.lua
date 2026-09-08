vim.pack.add { Github 'stevearc/conform.nvim' }
require('conform').setup {
  notify_on_error = false,
  format_on_save = function(bufnr)
    -- You can specify filetypes to autoformat on save here:
    local enabled_filetypes = {
      lua = true,
      python = true,
      go = true,
    }
    if enabled_filetypes[vim.bo[bufnr].filetype] then
      return { timeout_ms = 500 }
    else
      return nil
    end
  end,
  default_format_opts = {
    lsp_format = 'fallback',
  },
  -- You can also specify external formatters in here.
  formatters_by_ft = {
    c = { 'clang-format' },
    lua = { 'stylua' },
    rust = { 'rustfmt', lsp_format = 'fallback' },
    python = { 'ruff_format', 'ruff_organize_imports' },
    go = { 'goimports', 'gofumpt' },
    sh = { 'shfmt' },
    bash = { 'shfmt' },
  },
}

vim.keymap.set({ 'n', 'v' }, '<leader>f', function() require('conform').format { async = true } end, { desc = '[F]ormat buffer' })
