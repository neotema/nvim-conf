local plugin = require('core.pack').register_plugin
local conf = require('modules.rust.config')

plugin({
    'simrat39/rust-tools.nvim',
    config = conf.rust_tool_nvim,
    after = 'nvim-lspconfig',
    requires = {
      { "neovim/nvim-lspconfig" },
      { 'nvim-lua/plenary.nvim' },
    },
})

plugin({
    'nvim-lua/plenary.nvim',
    config = conf.plenary_nvim,
    requires = { 'nvim-lua/popup.nvim', opt = true },
})

plugin({
  'mfussenegger/nvim-dap',
  config = conf.nvim_dap,
  after = 'plenary.nvim',
  requires = { 'nvim-lua/plenary.nvim' },
})

plugin({
  'rcarriga/nvim-dap-ui',
  config = conf.nvim_dap_ui,
  after = 'nvim-dap',
  requires = { 'mfussenegger/nvim-dap', opt = true },
})
