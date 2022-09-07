-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local plugin = require('core.pack').register_plugin
local conf = require('modules.tools.config')

plugin({
  'williamboman/mason.nvim',
  config = conf.mason_nvim,
  requires = {
    { 'williamboman/mason-lspconfig.nvim', opt = true },
  }
})

plugin({
  'williamboman/mason-lspconfig.nvim',
  config = conf.mason_lspconfig_nvim,
  requires = {
    { 'neovim/nvim-lspconfig' },
  }
})

plugin({
  'nvim-telescope/telescope.nvim',
  cmd = 'Telescope',
  config = conf.telescope,
  requires = {
    { 'nvim-lua/popup.nvim', opt = true },
    { 'nvim-lua/plenary.nvim', opt = true },
    { 'nvim-telescope/telescope-fzy-native.nvim', opt = true },
  },
})

plugin({
  'windwp/nvim-autopairs',
  config = conf.autopairs,
})

plugin({
  'axieax/urlview.nvim',
  config = conf.urlview,
  after = 'telescope.nvim',
  requires = {
    {  'nvim-telescope/telescope.nvim' }
  }
})
