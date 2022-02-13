require "mappings"
require "settings"

vim.cmd 'colorscheme tokyodark'

local function clone_paq()
  local path = vim.fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'
  if vim.fn.empty(vim.fn.glob(path)) > 0 then
    vim.fn.system {
      'git',
      'clone',
      '--depth=1',
      'https://github.com/savq/paq-nvim.git',
      path
    }
  end
end

clone_paq()
vim.cmd('packadd paq-nvim')
require 'paq' {
  "savq/paq-nvim";

  "nvim-treesitter/nvim-treesitter";
  "neovim/nvim-lspconfig";
  "hrsh7th/nvim-cmp";
  "hrsh7th/cmp-nvim-lsp";

  "tiagovla/tokyodark.nvim";

  "tpope/vim-surround";
  "tpope/vim-commentary";

  "lukas-reineke/indent-blankline.nvim";
}

require'plugins.treesitter'
require'plugins.lsp'
require'plugins.indent-blankline'

vim.g.indent_blankline_use_treesitter = "true"

