local path = "s3ncha.module.code."

return {
    require(path .. "treesitter"),
    require(path .. "java"),
    require(path .. "lsp"),
    require(path .. "dap"),
    require(path .. "none-ls"),
    require(path .. "blink"),
}
