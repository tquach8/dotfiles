require "mappings"
require "settings"
require "plugin.treesitter"
require "plugin.lsp"

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
  "junegunn/fzf";
  "junegunn/fzf.vim";
  "preservim/nerdtree";

  "tiagovla/tokyodark.nvim";

  "tpope/vim-surround";
  "tpope/vim-commentary";

  "lukas-reineke/indent-blankline.nvim";
}

vim.cmd "colorscheme tokyodark"
