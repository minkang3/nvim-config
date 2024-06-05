local ok, fzf = pcall(require, "fzf-lua")
if not ok then
	return
end



fzf.setup({
    winopts = {
        height = 0.8,
        width = 0.8,
        row = 0.5,
--        hl = { normal = "Pmenu" },
--        border = "none",
    },
})
