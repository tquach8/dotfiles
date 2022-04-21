require "mappings"
require "settings"
require "plugin.treesitter"
require "plugin.lsp"
require "plugin.toggleterm"

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
  "nvim-treesitter/nvim-treesitter";
  "neovim/nvim-lspconfig";
  "hrsh7th/nvim-cmp";
  "hrsh7th/cmp-nvim-lsp";
  "L3MON4D3/LuaSnip";
  "saadparwaiz1/cmp_luasnip";
  "vim-test/vim-test";
  "akinsho/toggleterm.nvim";

  "junegunn/fzf";
  "junegunn/fzf.vim";
  "preservim/nerdtree";

  "Mofiqul/vscode.nvim";

  "tpope/vim-surround";
  "tpope/vim-commentary";
  "christoomey/vim-tmux-navigator";

  "lukas-reineke/indent-blankline.nvim";
  "jiangmiao/auto-pairs";
  -- 'akinsho/bufferline.nvim';
  -- 'kyazdani42/nvim-web-devicons';
}
vim.g.vscode_style = "dark"
vim.g.vscode_italic_comment = 1
vim.cmd "colorscheme vscode"
