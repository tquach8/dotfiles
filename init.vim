syntax on

set expandtab "tabs will be converted to spaces
set tabstop=2 "set the tab length set shiftwidth=2 "indentation space
set softtabstop=1
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set incsearch

" let g:rg_derive_root='true'

" Plugin manager
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'

" UI stuff
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

"Plug 'dense-analysis/ale'

" Ruby/Rails plugins
"Plug 'tpope/vim-endwise'
"Plug 'tpope/vim-rails'
"Plug 'vim-ruby/vim-ruby'

" Use cs to change surroundings
" Plug 'tpope/vim-surround'

Plug 'tpope/vim-commentary'

call plug#end()

let $COCCONFIG = '~/.config/nvim/coc-config.vim'
source $COCCONFIG

" Only use rubocop for linting
" let g:ale_linters = {
" \   'ruby': ['rubocop'],
" \}
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_insert_leave = 0
" let g:ale_fix_on_save = 1

colorscheme gruvbox
set colorcolumn=110

" Custom key mappings
let mapleader = " "
inoremap jj <Esc>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>o :ls<CR>:b<Space>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :Rg<Space>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <Esc> :noh<CR><CR>
" Shortcut to open vim config and auto source
let $VIMRCPATH = "~/.config/nvim/init.vim"
map <leader>vimrc :tabe ~/.config/nvim/init.vim<cr>
autocmd BufWritePost init.vim source $VIMRCPATH
" end

" FZF configuration
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.7 } }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
