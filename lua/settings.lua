local o = vim.o
local wo = vim.wo

o.number = true
o.relativenumber = true
o.wrap = false
o.hidden = true
o.shiftwidth = 2
o.termguicolors = true
wo.colorcolumn = "120"

local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = 'maintained', highlight = {enable = true}}
