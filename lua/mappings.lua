local map = vim.api.nvim_set_keymap

vim.g.mapleader = ','

local options = { noremap = true }
map('i', 'jj', '<Esc>', options)

map('n', '<leader>q', ':q<CR>', options)
-- map('n', '<leader>w', ':wincmd k<CR>', options)
-- map('n', '<leader>s', ':wincmd j<CR>', options)
-- map('n', '<leader>d', ':wincmd l<CR>', options)
-- map('n', '<leader>a', ':wincmd h<CR>', options)
map('n', '<C-w>', ':wincmd k<CR>', options)
map('n', '<C-s>', ':wincmd j<CR>', options)
map('n', '<C-d>', ':wincmd l<CR>', options)
map('n', '<C-a>', ':wincmd h<CR>', options)
map('n', '<leader>ha', ':vertical resize -5<CR>', options)
map('n', '<leader>hd', ':vertical resize +5<CR>', options)
map('n', '<leader>va', ':resize -5<CR>', options)
map('n', '<leader>vd', ':resize +5<CR>', options)
map('n', '<leader><Esc>', ':nohlsearch<CR>', options)

map('n', '<C-p>', ':GFiles<CR>', options)
map('n', '<C-f>', ':Rg<CR>', options)
map('n', '<C-o>', ':Buffers<CR>', options)
map('n', '<C-b>', ':NERDTreeToggle<CR>', options)
map('n', '<C-r>', ':1TermExec cmd="bundle exec rspec %"<Left>', options)
map('n', '<C-g>', ':2ToggleTerm<CR>', options)
map('n', '<leader>ta', ':ToggleTermToggleAll<CR>', options)
