return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                angularls = {
                    on_init = function(client)
                        client.server_capabilities.inlayHintProvider = nil
                    end,
                },
            },
        },
    },
}
