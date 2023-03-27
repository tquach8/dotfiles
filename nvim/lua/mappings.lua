local map = vim.api.nvim_set_keymap

vim.g.mapleader = ' '

local options = { noremap = true }

map('i', 'jj', '<Esc>', options)

map('n', '<leader>q', ':q<CR>', options)
map('n', '<C-k>', ':wincmd k<CR>', options)
map('n', '<C-j>', ':wincmd j<CR>', options)
map('n', '<C-l>', ':wincmd l<CR>', options)
map('n', '<C-h>', ':wincmd h<CR>', options)
map('n', '<leader>ha', ':vertical resize -5<CR>', options)
map('n', '<leader>hd', ':vertical resize +5<CR>', options)
map('n', '<leader>va', ':resize -5<CR>', options)
map('n', '<leader>vd', ':resize +5<CR>', options)
map('n', '<leader><Esc>', ':nohlsearch<CR>', options)
map('n', '<leader>br', ':bufdo e<CR>', options)
map('n', '<leader>f', ':let @+=expand("%:p\")<CR>', options)

-- Calls test runner on current file in new tmux pane
map('n', '<C-r>', '', {
  callback = function()
    local file = vim.fn.expand("%:p")
    local file_type = file:match("^.+(%..+)$")

    if file_type == ".rb" then
      vim.cmd(':VimuxRunCommand("clear; bundle exec rspec " . bufname("%"))')
    elseif file_type == ".js" or file_type == ".jsx" then
      vim.cmd(':VimuxRunCommand("clear; yarn test " . bufname("%"))')
    else
      print("Test runner not found for the file type", file_type)
    end
  end
})

-- Copy to system clipboard
map('v', '<C-c>', '"*y', options)

map('n', '<C-p>', ':GFiles<CR>', options)
map('n', '<C-f>', ':Rg<CR>', options)
map('n', '<C-o>', ':Buffers<CR>', options)
map('n', '<C-t>', ':NERDTreeToggle<CR>', options)
map('n', '<C-e>', ':VimuxRunCommand("clear; bundle exec rspec " . bufname("%") . ":" . line("."))<CR>', options)
