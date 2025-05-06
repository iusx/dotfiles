return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      scala = { "scalafmt" },
    },
    formatters = {
      scalafmt = {
        command = "scalafmt",
        args = { "--stdin" },
        stdin = true,
        cwd = require("conform.util").root_file({ ".scalafmt.conf", "build.sbt", ".git" }),  
      },
    },
  },
}
