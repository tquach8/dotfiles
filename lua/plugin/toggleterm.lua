require'toggleterm'.setup{
  size = 20,
  open_mapping = [[<c-t>]],
  start_in_insert = true,
  hide_numbers = true,
}

function _G.set_terminal_keymaps()
  local opts = { noremap = true }
  vim.api.nvim_buf_set_keymap(0, 't', 'jj', [[<C-\><C-n>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
