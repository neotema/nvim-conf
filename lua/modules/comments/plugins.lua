local plugin = require('core.pack').register_plugin
local conf = require('modules.comments.config')

plugin({
  'folke/todo-comments.nvim',
  config = conf.todo_comments,
  requires = {
    { 'nvim-lua/plenary.nvim', opt = true },
  }
})
