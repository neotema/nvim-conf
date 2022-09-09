local config = {}

function config.rust_tool_nvim()
    if not packer_plugins['nvim-lspconfig'].loaded then
        vim.cmd([[packadd nvim-lspconfig]])
    end
    local rt = {
        server = {
            settings = {
                on_attach = function(_, bufnr)
                    -- Hover actions
                    vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
                    -- Code action groups
                    vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
                    require 'illuminate'.on_attach(client)
                end,
                ["rust-analyzer"] = {
                    checkOnSave = {
                        command = "clippy"
                    },
                },
            }
        },
    }
    require('rust-tools').setup(rt)
end

function config.nvim_dap()
  local dap = require('dap')
  dap.adapters.codelldb = {
    type = 'server',
    port = "${port}",
    executable = {
      command = '/Users/arch/codelldb-x86/extension/adapter/codelldb',
      args = { "--port", "${port}" },
    }
  }
end

function config.nvim_dap_ui()
  require('dapui').setup()
end

return config
