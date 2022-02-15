vim.cmd [[highlight IndentBlanklineIndent1 guifg=#1f1f1f gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#1f1f1f gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextChar guifg=#E06C75 gui=nocombine]]

vim.opt.list = true
require("indent_blankline").setup({
  show_current_context = true,
  char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
})
