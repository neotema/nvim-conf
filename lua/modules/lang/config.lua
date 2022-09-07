local config = {}

function config.nvim_treesitter()
  vim.api.nvim_command('set foldmethod=expr')
  vim.api.nvim_command('set foldexpr=nvim_treesitter#foldexpr()')
  require('nvim-treesitter.configs').setup({
    ensure_installed = { 'lua', 'rust', 'toml' },
    auto_install = true,
    ignore_install = { 'phpdoc' },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting=false,
    },
    ident = { enable = true },
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
    },
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ['af'] = '@function.outer',
          ['if'] = '@function.inner',
          ['ac'] = '@class.outer',
          ['ic'] = '@class.inner',
        },
      },
    },
  })
end

return config
