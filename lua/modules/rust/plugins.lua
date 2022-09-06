local plugin = require('core.pack').register_plugin
local conf = require('modules.rust.config')

plugin({
    'simrat39/rust-tools.nvim',
    config = conf.rust_tool_nvim,
    requires = {
        { 'neovim/nvim-lspconfig', opt = true },
    }
})