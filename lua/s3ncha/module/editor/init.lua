local path = "s3ncha.module.editor."

return {
    require(path .. "themes"),
    require(path .. "neotree"),
    require(path .. "lualine"),
    require(path .. "bettercomments"),
    require(path .. "gitsigns"),
    require(path .. "whichkey"),
}
