return {
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "luvit-meta/library", words = { "vim%.uv" } },
            },
        },
    },
    { "Bilal2453/luvit-meta", lazy = true },
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v4.x",
        config = function()
            local lsp_zero = require('lsp-zero')

            local lsp_attach = function(client, bufnr)
                lsp_zero.default_keymaps({ buffer = bufnr })
            end

            -- lsp_zero.extend_lspconfig({
            --   sign_text = true,
            --   lsp_attach = lsp_attach,
            --   capabilities = require('cmp_nvim_lsp').default_capabilities()
            -- })
        end
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = {
                    "java-test",
                    "java-debug-adapter",
                },
            })
        end
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                handlers = {
                    function(server_name)
                        require("lspconfig")[server_name].setup({})
                    end,
                    jdtls = function() end,
                }
            })
        end
    },
    { "neovim/nvim-lspconfig" },
    {
        "danarth/sonarlint.nvim",
        config = function()
            require('sonarlint').setup({
                server = {
                    cmd = {
                        'sonarlint-language-server',
                        -- Ensure that sonarlint-language-server uses stdio channel
                        '-stdio',
                        '-analyzers',
                        -- paths to the analyzers you need, using those for python and java in this example
                        vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarpython.jar"),
                        vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarcfamily.jar"),
                        vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjava.jar"),
                    },
                    -- All settings are optional
                    settings = {
                        -- The default for sonarlint is {}, this is just an example
                        sonarlint = {
                            rules = {
                                ['typescript:S101'] = { level = 'on', parameters = { format = '^[A-Z][a-zA-Z0-9]*$' } },
                                ['typescript:S103'] = { level = 'on', parameters = { maximumLineLength = 180 } },
                                ['typescript:S106'] = { level = 'on' },
                                ['typescript:S107'] = { level = 'on', parameters = { maximumFunctionParameters = 7 } }
                            }
                        }
                    }
                },
                filetypes = {
                    -- Tested and working
                    'python',
                    'cpp',
                    -- Requires nvim-jdtls, otherwise an error message will be printed
                    'java',
                }
            })
        end
    },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'path' }
                }, {
                    {
                        name = 'cmdline',
                        option = {
                            ignore_cmds = { 'Man', '!' }
                        }
                    }
                })
            })
            cmp.setup({
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'buffer' },
                    { name = 'path' },
                },
                snippet = {
                    expand = function(args)
                        vim.snippet.expand(args.body) --requires NeoVIM 10.0.0
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<c-space>'] = cmp.mapping.complete(),
                    ['<CR>'] = cmp.mapping.confirm({ select = false }),
                }),
            })
        end,
    },

}
