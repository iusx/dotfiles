return {
  {
    "ray-x/fzfx.nvim",
    dependencies = {
      "ibhagwan/fzf-lua",
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("fzfx").setup()
    end,
  },
}
