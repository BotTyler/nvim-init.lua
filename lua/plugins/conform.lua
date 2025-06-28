require("conform").setup({
    formatters_by_ft = {
        html = { "prettier" },
        htmlangular = { "prettier" },
    },
    formatters = {
        prettier = {
            prepend_args = { "--print-width", "100" },
        },
    },
})
