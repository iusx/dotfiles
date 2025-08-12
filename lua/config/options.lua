--[[ EDIT ]] vim.opt.clipboard = "unnamedplus"
local opt = vim.opt
opt.spelllang = {"en", "cjk"}
vim.opt.wrap = true
vim.g.autoformat = false

--[[ UI ]]
vim.opt.number = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true

--[[ Code ]]
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.foldmethod = "expr"
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldlevel = 10
vim.opt.foldenable = true

vim.keymap.set("n", "<C-z>", "u", {
    desc = "back"
})
vim.keymap.set("n", "<C-S-z>", "<C-r>", {
    desc = "back!"
})
