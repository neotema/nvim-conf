-----------------------
-- Rust
-----------------------
local ih = require("inlay-hints")
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
-- local capabilities = require("cmp_nvim_lsp").default_capabilities()

local rt = require("rust-tools")
local rtdap = require("rust-tools.dap")
-- local extension_path = "$HOME/codelldb-x86/extension/"
local extension_path = "/Users/arch/codelldb-x86/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"

rt.setup({
  tools = {
    executor = require("rust-tools/executors").termopen,
    inlay_hints = {
      auto = true,
      -- only_current_line = true,
      -- whether to show parameter hints with the inlay hints or not
      -- default: true
      show_parameter_hints = true,
    },
    on_initialized = function()
      ih.set_all()
    end,
  },
  hover_actions = {

    -- the border that is used for the hover window
    -- see vim.api.nvim_open_win()
    border = {
      { "╭", "FloatBorder" },
      { "─", "FloatBorder" },
      { "╮", "FloatBorder" },
      { "│", "FloatBorder" },
      { "╯", "FloatBorder" },
      { "─", "FloatBorder" },
      { "╰", "FloatBorder" },
      { "│", "FloatBorder" },
    },

    -- whether the hover action window gets automatically focused
    -- default: false
    auto_focus = false,
  },
  server = {
    on_attach = function(client, bufnr)
      -- ih.on_attach(client, bufnr)
      vim.keymap.set(
        "n",
        "<C-space>",
        rt.hover_actions.hover_actions,
        { buffer = bufnr }
      )

      vim.keymap.set(
        "n",
        "<Leader>a",
        rt.code_action_group.code_action_group,
        { buffer = bufnr }
      )
    end,
  },
  dap = {
    -- adapter = {
    --   type = "executable",
    --   command = "lldb-vscode",
    --   name = "rt_lldb",
    -- },
    adapter = rtdap.get_codelldb_adapter(codelldb_path, liblldb_path),
  },
})
