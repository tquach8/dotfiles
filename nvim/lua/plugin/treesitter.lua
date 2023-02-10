require'nvim-treesitter.configs'.setup {
  ensure_installed = { "ruby", "lua" },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  }
}
