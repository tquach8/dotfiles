local map = vim.api.nvim_set_keymap

vim.g.mapleader = ','

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
map('v', '<C-c>', '"*y', options)

map('n', '<C-p>', ':GFiles<CR>', options)
map('n', '<C-f>', ':Rg<CR>', options)
map('n', '<C-o>', ':Buffers<CR>', options)
map('n', '<C-t>', ':NERDTreeToggle<CR>', options)
map('n', '<C-r>', ':VimuxRunCommand("clear; bundle exec rspec " . bufname("%"))<CR>', options)
map('n', '<C-e>', ':VimuxRunCommand("clear; bundle exec rspec " . bufname("%") . ":" . line("."))<CR>', options)
