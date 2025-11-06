return {
  "nvim-java/nvim-java",
  config = false,
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          -- Your JDTLS configuration goes here
          jdtls = {
            -- settings = {
            --   java = {
            --     configuration = {
            --       runtimes = {
            --         {
            --           name = "JavaSE-23",
            --           path = "/usr/local/sdkman/candidates/java/23-tem",
            --         },
            --       },
            --     },
            --   },
            -- },
          },
        },
        setup = {
          jdtls = function()
            -- Your nvim-java configuration goes here
            require("java").setup({
              -- root_markers = {
              --   "settings.gradle",
              --   "settings.gradle.kts",
              --   "pom.xml",
              --   "build.gradle",
              --   "mvnw",
              --   "gradlew",
              --   "build.gradle",
              --   "build.gradle.kts",
              -- },
            })
<<<<<<< HEAD
            require("lspconfig").jdtls.setup({})

=======
            require("lspconfig").jdtls.setup()
>>>>>>> fa0a2ae2261eb2541db9c8c159cbeff637bb32a9
          end,
        },
      },
    },
  },
}
