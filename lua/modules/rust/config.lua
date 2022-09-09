local config = {}

function config.rust_tool_nvim()
    if not packer_plugins['nvim-lspconfig'].loaded then
        vim.cmd([[packadd nvim-lspconfig]])
    end
    local extension_path = '/Users/arch/codelldb-x86/extension/'
    local codelldb_path = extension_path .. 'adapter/codelldb'
    local liblldb_path = extension_path .. 'lldb/lib/liblldb.dylib'

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
        dap = {
            adapter = require('rust-tools.dap').get_codelldb_adapter(
                codelldb_path, liblldb_path)
        }
    }
    require('rust-tools').setup(rt)
end

function config.plenary_nvim() end

function config.nvim_dap() end
    -- require('dap').setup()
  -- local dap = require('dap')
  -- dap.adapters.codelldb = {
    -- port = 18111,
    -- type = 'server',
    -- port = "${port}",
    -- executable = {
    --   command = '/Users/arch/codelldb-x86/extension/adapter/codelldb',
    --   args = { "--port", "${port}" },
    -- }
  -- }
-- end

function config.nvim_dap_ui() end
--   require('dapui').setup()
-- end

return config
