return {
  "akinsho/bufferline.nvim",
  config = function()
    require("bufferline").setup {}
    vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "> buffer" })
    vim.keymap.set("n", "<S-j>", "<cmd>BufferLineCyclePrev<CR>", { desc = "< buffer" })
  end,
}
