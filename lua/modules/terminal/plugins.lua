local plugin = require('core.pack').register_plugin
local conf = require('modules.terminal.config')


plugin({
  'voldikss/vim-floaterm',
  config = conf.floaterm_nvim,
  cmd = 'FloatermNew',
})
