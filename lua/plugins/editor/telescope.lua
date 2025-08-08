return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    telescope.setup {
      defaults = {

      },
    }

    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find Word" })
    vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recently Opened Files" })
  end,
}
