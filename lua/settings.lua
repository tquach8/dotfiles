local o = vim.o
local wo = vim.wo

o.number = true
o.relativenumber = true
o.wrap = false
o.hidden = true
o.shiftwidth = 2
o.termguicolors = true
o.swapfile = false
wo.colorcolumn = "100"

vim.cmd[[set mouse=a]]

local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = 'maintained', highlight = {enable = true}}
