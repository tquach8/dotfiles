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

  -- LSP plugins
  "neovim/nvim-lspconfig";
  "hrsh7th/nvim-cmp";
  "hrsh7th/cmp-nvim-lsp";
  "L3MON4D3/LuaSnip";
  "saadparwaiz1/cmp_luasnip";

  "junegunn/fzf";
  "junegunn/fzf.vim";
  "preservim/nerdtree";
  "APZelos/blamer.nvim";
  "tpope/vim-fugitive";
  "nvim-treesitter/nvim-treesitter";

  "tpope/vim-surround";
  "tpope/vim-commentary";
  "christoomey/vim-tmux-navigator";

  "lukas-reineke/indent-blankline.nvim";
  "jiangmiao/auto-pairs";
  "vim-airline/vim-airline";
  "vim-airline/vim-airline-themes";

  "preservim/vimux";
  "pgr0ss/vimux-ruby-test";

  -- color schemes
  "Mofiqul/vscode.nvim";
  "folke/tokyonight.nvim";
}
vim.g.vscode_style = "dark"
vim.g.vscode_italic_comment = 1
vim.cmd[[colorscheme tokyonight]]
