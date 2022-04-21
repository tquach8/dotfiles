require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",

  highlight = {
    enable = true,
    -- custom_captures = {
    --   ["module"] = "Identifier",
    -- },
    additional_vim_regex_highlighting = true,
  }
}
