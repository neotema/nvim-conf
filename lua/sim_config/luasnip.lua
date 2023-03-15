local M = {}

local ls = require("luasnip")
local snip = ls.snippet
-- local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
-- local choice = ls.choice_node
-- local dynamicn = ls.dynamic_node
-- local date = function()
--   return { os.date("%Y-%m-%d") }
-- end

local filename = function()
  local str = debug.getinfo(2, "S").source:sub(2)
  return str:match("^.*/(.*).lua$") or str
end
ls.add_snippets(nil, {
  all = {
    snip({
      trig = "lc",
      namr = "Solution",
      dscr = "Leetcode solution rust template",
    }, {
      text("struct Solution{}"),
      text("#[test]"),
      text("fn "),
      text("s_test_case_1() {}"),
      insert(0),
    }),
  },
})
ls.config.set_config({
  history = true,
  updateevents = "TextChanged, TextChangedI",
  enable_autosnippets = true,
})

function M.navigate(num)
  if ls.jumpable(num) then
    ls.jump(num)
  end
end
return M
