require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "python", "javascript" }, 
  sync_install = false,
  auto_install = true,  

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false, 
  },

  indent = {
    enable = true,  
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}
