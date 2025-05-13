return {
  --[[ { ]]
  --[[   "scalameta/nvim-metals", ]]
  --[[   dependencies = { ]]
  --[[     "nvim-lua/plenary.nvim", ]]
  --[[   }, ]]
  --[[   ft = { "scala", "sbt", "java" }, ]]
  --[[   opts = function() ]]
  --[[     local metals_config = require("metals").bare_config() ]]
  --[[     metals_config.on_attach = function(client, bufnr) end ]]
  --[[]]
  --[[     return metals_config ]]
  --[[   end, ]]
  --[[   config = function(self, metals_config) ]]
  --[[     local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true }) ]]
  --[[     vim.api.nvim_create_autocmd("FileType", { ]]
  --[[       pattern = self.ft, ]]
  --[[       callback = function() ]]
  --[[         require("metals").initialize_or_attach(metals_config) ]]
  --[[       end, ]]
  --[[       group = nvim_metals_group, ]]
  --[[     }) ]]
  --[[   end, ]]
  --[[ }, ]]
  --[[ "stevearc/conform.nvim", ]]
  --[[ opts = { ]]
  --[[   formatters_by_ft = { ]]
  --[[     css = { "prettier" }, ]]
  --[[     scala = { "scalafmt" }, ]]
  --[[     avascript = { "prettier" }, ]]
  --[[     typescript = { "prettier" }, ]]
  --[[     javascriptreact = { "prettier" }, ]]
  --[[     typescriptreact = { "prettier" }, ]]
  --[[     html = { "prettier" }, ]]
  --[[     json = { "prettier" }, ]]
  --[[     yaml = { "prettier" }, ]]
  --[[     markdown = { "prettier" }, ]]
  --[[     graphql = { "prettier" }, ]]
  --[[   }, ]]
  --[[   formatters = { ]]
  --[[     scalafmt = { ]]
  --[[       command = "scalafmt", ]]
  --[[       args = { "--stdin" }, ]]
  --[[       stdin = true, ]]
  --[[       cwd = require("conform.util").root_file({ ".scalafmt.conf", "build.sbt", ".git" }), ]]
  --[[     }, ]]
  --[[   }, ]]
  --[[ }, ]]
  -- ~/.config/nvim/lua/plugins/conform.lua
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      css = { "prettier" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
    },
    formatters = {
      prettier = {
        command = "prettier",
        args = { "--stdin-filepath", "$FILENAME" },
        stdin = true,
      },
    },
  },
}
