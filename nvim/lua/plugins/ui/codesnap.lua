return {
  {
    "mistricky/codesnap.nvim",
    build = "make build_generator",
    keys = {
      { "<leader>cc", "<cmd>CodeSnap<cr>", mode = "x", desc = "CodeSnap to clipboard" },
      { "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save CodeSnap" },
    },
    opts = {
      save_path = "~/Downloads/",
      has_breadcrumbs = true,
      bg_theme = "solid_color",
      bg_padding = 0,
    },
  },
}
