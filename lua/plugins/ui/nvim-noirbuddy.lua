local noiropts = {
  preset = "minimal",
  colors = {
    primary = "#00D9BD",
    background = "#282C34",
  },
}

return {
  {
    "jesseleite/nvim-noirbuddy",
    dependencies = {
      "tjdevries/colorbuddy.nvim",
    },
    lazy = false,
    priority = 1000,
    config = function()
      require("noirbuddy").setup(noiropts)
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("noirbuddy").setup(noiropts)
        vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#00D9BD", bold = true })
        vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#323232", bg = "NONE" })
        vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
        vim.api.nvim_set_hl(0, "LineNr", { fg = "#54575D", bg = "NONE" }) 
        vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#00D9BD", bg = "NONE" }) 
        vim.api.nvim_set_hl(0, "WinBar", { bg = "none" })
        vim.api.nvim_set_hl(0, "WinBarNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "TabLine", { bg = "none" })
        vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })
        vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none" })
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
        vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
        vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
        vim.cmd("hi StatusLine guibg=NONE ctermbg=NONE")
        vim.cmd("hi VertSplit guibg=NONE ctermbg=NONE")
      end,
    },
  },
}
