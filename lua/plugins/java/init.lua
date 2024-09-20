return {
  "nvim-java/nvim-java",
  config = false,
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          jdtls = {
            -- Your custom jdtls settings goes here
          },
        },
        setup = {
          jdtls = function()
            require("java").setup({
              -- Your custom nvim-java configuration goes here
              runtimes = {
                {
                  name = "JavaSE-21",
                  path = "$JAVA_HOME",
                  default = true,
                },
                {
                  name = "JavaSE-17",
                  path = "$JAVA_17_HOME",
                },
              },
            })
          end,
        },
      },
    },
  },
}
