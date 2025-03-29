require('java').setup()

local capabilities = require('blink.cmp').get_lsp_capabilities()
require('lspconfig').jdtls.setup({capabilities = capabilities})
require('lspconfig').lua_ls.setup({capabilities = capabilities})

