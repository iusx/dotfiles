return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "┊",
      highlight = {
        "IndentCyan", 
        "IndentGray2", 
        "IndentGray3",
        "IndentGray4",
        "IndentGray5",
        "IndentGray6",
        "IndentGray7",
      },
    },
    scope = { enabled = true, highlight = {
      "IndentCyan", "IndentGray2", "IndentGray3", "IndentGray4", "IndentGray5", "IndentGray6", "IndentGray7"
    }},
  },
  config = function(_, opts)
    local hooks = require("ibl.hooks")
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "IndentCyan",  { fg = "#00D9BD" })
      vim.api.nvim_set_hl(0, "IndentGray2", { fg = "#4B4B4B" })
      vim.api.nvim_set_hl(0, "IndentGray3", { fg = "#5C5C5C" })
      vim.api.nvim_set_hl(0, "IndentGray4", { fg = "#6D6D6D" })
      vim.api.nvim_set_hl(0, "IndentGray5", { fg = "#7E7E7E" })
      vim.api.nvim_set_hl(0, "IndentGray6", { fg = "#8F8F8F" })
      vim.api.nvim_set_hl(0, "IndentGray7", { fg = "#A0A0A0" })
    end)
    require("ibl").setup(opts)
  end,
}
