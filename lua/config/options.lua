--[[ EDIT ]]
vim.opt.clipboard = "unnamedplus"
local opt = vim.opt
opt.spelllang = { "en", "cjk" }
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
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
