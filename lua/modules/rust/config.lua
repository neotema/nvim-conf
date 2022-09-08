local config = {}

function config.rust_tool_nvim()
    -- if not packer_plugins['nvim-lspconfig.nvim'].loaded then
    --     vim.cmd([[packadd nvim-lspconfig.nvim]])
    -- end
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

return config
