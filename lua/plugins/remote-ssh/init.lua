return {
    {
        "chipsenkbeil/distant.nvim",
        -- branch = "fix/AddCheckForFailingToStartLspClient",
        config = function()
            require("distant"):setup({
                servers = {
                    ["192.168.1.91"] = {
                        -- lsp = {
                        --     ["Frontend"] = {
                        --         cmd = {
                        --             "/home/admin/.nvm/versions/node/v22.18.0/lib/node_modules/@angular/language-server/bin/ngserver",
                        --             "--stdio",
                        --             "--tsProbeLocations",
                        --             "/home/admin/.nvm/versions/node/v22.18.0/lib/node_modules/typescript/bin",
                        --             "--ngProbeLocations",
                        --             "/home/admin/.nvm/versions/node/v22.18.0/lib/node_modules/@angular/language-server/bin",
                        --         },
                        --         file_types = { "ts", "typescript", "html", "tsx", "jsx" },
                        --         root_dir = "/home/admin/projects/Big-Day/Frontend",
                        --         on_exit = function(code, signal, client_id)
                        --             print(
                        --                 string.format(
                        --                     "[Angular LSP] exited (code=%s, signal=%s, client=%s)",
                        --                     tostring(code),
                        --                     tostring(signal),
                        --                     tostring(client_id)
                        --                 )
                        --             )
                        --         end,
                        --     },
                        -- },
                    },
                },
            })
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            dir = "/home/tyler/projects/neo-tree-distant-source/",
            -- "BotTyler/neo-tree-distant-source",
        },
        opts = {
            sources = {
                "filesystem",
                "buffers",
                "git_status",
                "distant_source",
            },
        },
    },
    -- { dir = "/home/tyler/projects/neo-tree-distant-source/" },
    -- {
    --     "nvim-neo-tree/neo-tree.nvim",
    --     branch = "v3.x",
    --     dependencies = {
    --         "nvim-lua/plenary.nvim",
    --         "MunifTanjim/nui.nvim",
    --         "nvim-tree/nvim-web-devicons", -- optional, but recommended
    --     },
    --     config = function()
    --         require("neo-tree").setup({
    --             source_selector = {
    --                 winbar = true,
    --                 statusline = true,
    --                 truncation_character = ".",
    --             },
    --             sources = {
    --                 -- default sources
    --                 "filesystem",
    --                 "buffers",
    --                 "git_status",
    --                 -- user sources goes here
    --                 "distant_source",
    --             },
    --             distant_source = {},
    --         })
    --     end,
    --     lazy = false, -- neo-tree will lazily load itself
    -- },
}
