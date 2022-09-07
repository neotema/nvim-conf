local config = {}

function config.todo_comments()
  require('todo-comments').setup()
end

function config.nvim_comment()
  require('nvim_comment').setup({
    comment_empty = false,
    comment_empty_trim_whitespace = false,
  })
end

return config
