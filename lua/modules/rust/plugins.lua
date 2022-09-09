local plugin = require('core.pack').register_plugin
local conf = require('modules.rust.config')

plugin({
    'simrat39/rust-tools.nvim',
    config = conf.rust_tool_nvim,
    after = 'nvim-lspconfig',
    requires = { "neovim/nvim-lspconfig" },
})

plugin({
  'mfussenegger/nvim-dap',
  config = conf.nvim_dap,
  requires = { 'nvim-lua/plenary.nvim' },
})

plugin({
  'rcarriga/nvim-dap-ui',
  config = conf.nvim_dap_ui,
  requires = { 'mfussenegger/nvim-dap' },
})
