-- add any tools you want to have installed below
return {
    "mason-org/mason.nvim",
    opts = {
        ensure_installed = {
            "stylua",
            "shellcheck",
            "shfmt",
            "flake8",
            "eslint-lsp",
            "js-debug-adapter",
            "prettier",
            "typescript-language-server",
            "angular-language-server",
        },
    },
}
