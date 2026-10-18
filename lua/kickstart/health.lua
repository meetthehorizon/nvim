--[[
--
-- This file is not required for your own configuration,
-- but helps people determine if their system is setup correctly.
--
--]]

local check_version = function()
  local verstr = tostring(vim.version())
  if not vim.version.ge then
    vim.health.error(string.format("Neovim out of date: '%s'. Upgrade to latest stable or nightly", verstr))
    return
  end

  if vim.version.ge(vim.version(), '0.12') then
    vim.health.ok(string.format("Neovim version is: '%s'", verstr))
  else
    vim.health.error(string.format("Neovim out of date: '%s'. Upgrade to latest stable or nightly", verstr))
  end
end

local check_external_reqs = function()
  -- Basic utils: `git`, `make`, `unzip`
  for _, exe in ipairs { 'git', 'make', 'unzip' } do
    local is_executable = vim.fn.executable(exe) == 1
    if is_executable then
      vim.health.ok(string.format("Found executable: '%s'", exe))
    else
      vim.health.warn(string.format("Could not find executable: '%s'", exe))
    end
  end

  return true
end

-- LSP servers, formatters, and linters are managed by mise (see mise.toml
-- at the repo root). Each of these must be a valid executable on PATH.
local mise_tools = {
  'clangd', 'gopls', 'pyright', 'typescript-language-server', 'bash-language-server',
  'fish-lsp', 'yaml-language-server', 'lua-language-server', -- LSP servers
  'clang-format', 'stylua', 'ruff', 'goimports', 'gofumpt', 'shfmt', -- formatters
  'golangci-lint', 'shellcheck', 'markdownlint-cli2', -- linters
  'rg', -- telescope live_grep
}

local check_mise_tools = function()
  local missing = {}
  for _, exe in ipairs(mise_tools) do
    if vim.fn.executable(exe) ~= 1 then table.insert(missing, exe) end
  end

  if #missing == 0 then
    vim.health.ok 'All mise-managed tools found on PATH'
  else
    vim.health.warn('Missing mise tools: ' .. table.concat(missing, ', '))
    vim.health.warn('Run `mise install` in ' .. vim.fn.stdpath 'config' .. ' to install them')
  end
end

return {
  check = function()
    vim.health.start 'kickstart.nvim'

    vim.health.info [[NOTE: Not every warning is a 'must-fix' in `:checkhealth`

  LSP servers, formatters, and linters are installed with mise and declared
  in this repo's `mise.toml`. Run `mise install` to install missing tools.]]

    local uv = vim.uv or vim.loop
    vim.health.info('System Information: ' .. vim.inspect(uv.os_uname()))

    check_version()
    check_external_reqs()
    check_mise_tools()
  end,
}
