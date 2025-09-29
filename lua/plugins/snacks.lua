return {
    "folke/snacks.nvim",
    opts = {
        notifier = { enabled = true },
        picker = {
            sources = {
                explorer = {
                    hidden = true,
                    ignore = true,
                    exclude = { "node_modules", ".git" },
                },
            },
        },
    },
}
