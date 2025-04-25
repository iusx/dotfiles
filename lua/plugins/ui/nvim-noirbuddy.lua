local noiropts = {
  preset = "minimal",
  colors = {
    primary = "#00D9BD",
    background = "#000000",
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
     end,
    },
  },
}
