-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 禁用自动格式化

vim.g.autoformat = false

-- 支持 CJK
local opt = vim.opt

opt.spelllang = { "en", "cjk" }

-- winbar
-- vim.opt.winbar = "%=%m %f"

vim.opt.wrap = true
