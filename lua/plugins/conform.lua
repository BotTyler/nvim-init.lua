return {
    {
        "stevearc/conform.nvim",
        opts = function(_, opts)
            -- Extend formatters_by_ft to add prettier
            opts.formatters_by_ft = vim.tbl_deep_extend("force", opts.formatters_by_ft or {}, {
                javascript = { "prettier" },
                typescript = { "prettier" },
                html = { "prettier" },
                htmlangular = { "prettier" },
                css = { "prettier" },
                json = { "prettier" },
                markdown = { "prettier" },
                -- add any other filetypes you want here
            })

            -- Configure the prettier formatter
            opts.formatters = opts.formatters or {}
            opts.formatters.prettier = {
                prepend_args = { "--print-width", "100" },
            }
        end,
    },
}
