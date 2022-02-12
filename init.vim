set number
set relativenumber
set shiftwidth=2
set nowrap
set hidden
set listchars=tab:\|\
set list

call plug#begin('~/.vim/plugged')

source ~/.config/nvim/plugins/ale.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/gruvbox-material.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/ripgrep.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/rspec.vim
source ~/.config/nvim/plugins/dispatch.vim
Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

call plug#end()

lua require('lspconfig').tsserver.setup{…}


colorscheme gruvbox-material

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

let mapleader = "\<space>"
nnoremap <leader>q :q<CR>
map <leader>rc :tabe ~/.config/nvim/init.vim<CR>
inoremap jj <Esc>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>] :vertical resize +5<CR>
nnoremap <leader>[ :vertical resize -5<CR>
nnoremap <leader>= :resize +5<CR>
nnoremap <leader>- :resize -5<CR>
nmap <leader><Esc> :nohlsearch<CR>
nnoremap <leader>bc :%bd\|e#<CR>


let $VIMRCPATH = '~/.config/nvim/init.vim'
autocmd BufWritePost init.vim source $VIMRCPATH
