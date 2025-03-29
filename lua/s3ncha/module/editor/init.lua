local path = "s3ncha.module.editor."

return {
    require(path .. "undotree"),
    require(path .. "fzf"),
    require(path .. "themes"),
    require(path .. "fidget"),
    require(path .. "neotree"),
    require(path .. "lualine"),
    require(path .. "bettercomments"),
    require(path .. "gitsigns"),
    require(path .. "whichkey"),
}
