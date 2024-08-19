return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          -- 添加 Prettier 支持
          null_ls.builtins.formatting.prettier.with({
            filetypes = { "scss", "css", "less", "html", "javascript", "typescript" },
          }),
        },
      })
    end,
  },
}
