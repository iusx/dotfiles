return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = false,
      component_separators = "",
      section_separators = "",
      theme = {
        normal = {
          a = { fg = "#a0a0a0", bg = "none" },
          b = { fg = "#a0a0a0", bg = "none" },
          c = { fg = "#a0a0a0", bg = "none" },
        },
        insert = {
          a = { fg = "#a0a0a0", bg = "none" },
          b = { fg = "#a0a0a0", bg = "none" },
          c = { fg = "#a0a0a0", bg = "none" },
        },
        visual = {
          a = { fg = "#a0a0a0", bg = "none" },
          b = { fg = "#a0a0a0", bg = "none" },
          c = { fg = "#a0a0a0", bg = "none" },
        },
        replace = {
          a = { fg = "#a0a0a0", bg = "none" },
          b = { fg = "#a0a0a0", bg = "none" },
          c = { fg = "#a0a0a0", bg = "none" },
        },
        command = {
          a = { fg = "#a0a0a0", bg = "none" },
          b = { fg = "#a0a0a0", bg = "none" },
          c = { fg = "#a0a0a0", bg = "none" },
        },
        inactive = {
          a = { fg = "#a0a0a0", bg = "none" },
          b = { fg = "#a0a0a0", bg = "none" },
          c = { fg = "#a0a0a0", bg = "none" },
        },
      },
    },
    sections = {
      lualine_z = {
        function()
          return os.date("%H:%M")
        end,
      },
    },
  },
}
