return {
  {
    "jesseleite/nvim-noirbuddy",
    lazy = false,
    priority = 1000,
    dependencies = {
      "tjdevries/colorbuddy.nvim",
    },
    config = function()
      require("noirbuddy").setup({
        colors = {
          primary = "#00D9BD",
          noir_2 = "#b0b0b0",
          noir_6 = "#00D9BD",
        },
      })

      -- 设置透明背景 for general UI
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })

      -- 设置背景颜色 for Neo-tree
      vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })

      -- 设置行号 highlight
      vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#00D9BD", bold = true })
      --[[ vim.api.nvim_set_hl(0, "CursorLine", { fg = "#00D9BD" }) ]]
      --
      vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "none", bg = "none" })
      vim.api.nvim_set_hl(0, "SnacksPickerTree", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "none", bg = "none" })

      vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#323232", bg = "NONE" })
      vim.api.nvim_set_hl(0, "VertSplit", { fg = "#323232", bg = "NONE" })
      vim.api.nvim_set_hl(0, "ministatuslinefilename", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "ministatuslinefileinfo", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "ministatuslineinactivestatus", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "NONE", bg = "NONE" })

      -- 设置 NvimTree 文件夹图标透明背景
      vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { bg = "NONE" })
      -- ColorBuddy Group configuration
      local Group = require("colorbuddy").Group
      local colors = require("colorbuddy").colors

      Group.new("NvimTreeRootFolder", colors.noir_6, nil, nil)
      Group.new("NvimTreeFolderIcon", colors.primary, nil, nil)
      Group.new("NvimTreeIndentMarker", colors.noir_6, nil, nil)
      Group.new("NvimTreeExecFile", colors.noir_6, nil, nil)
      Group.new("NvimTreeSpecialFile", colors.noir_2, nil, nil)
    end,
  },
}
