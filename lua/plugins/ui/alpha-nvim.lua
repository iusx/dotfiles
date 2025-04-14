return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function(_, opts)
      local dashboard = require("alpha.themes.dashboard")

      local logo = [[
     .-.                                                  
    /   \         .-.                                     
   /     \       /   \       .-.     .-.     _  _         
+-/-------\-----/-----\-----/---\---/---\---/-\-/-\/\/--- 
 /         \   /       \   /     '-'     -'               
/           '-'                                           
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      dashboard.section.header.val = vim.split(logo, "\n")

      opts.layout = dashboard.config.layout
      opts.config = dashboard.config
    end,
    config = function(_, opts)
      require("alpha").setup(opts.config)
    end,
  },
}
