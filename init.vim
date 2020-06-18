syntax on

set tabstop=2 softtabstop=2
set shiftwidth=2
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set incsearch
set rnu
set autochdir

" Settings for CoC
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
" tab for completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" end CoC settings

set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey
highlight Visual guifg=blue

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'

" Ruby/Rails plugins
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'

call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = " "
let g:user_emmet_leader_key=','

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>q :q<CR>
inoremap jj <Esc>
nnoremap <C-p> :Files<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-e> :NERDTreeToggle<CR>

" Autocomplete remappings
inoremap (j ()<Esc>i
inoremap [] []<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap (; (<CR>)<Esc>O
inoremap [; [<CR>]<Esc>O

autocmd BufWritePre * %s/\s\+$//e
