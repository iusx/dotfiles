return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = 15,
      open_mapping = [[<C-/>]],  
      direction = "horizontal",
      shade_terminals = true,
    })
  end,
}
