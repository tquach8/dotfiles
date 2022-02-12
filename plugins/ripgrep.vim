Plug 'jremmen/vim-ripgrep'

let g:rg_derive_root='true'

nnoremap <leader>rg :Rg<space>
nnoremap <leader>ps :Rg <C-R>=expand("<cword>")<CR><CR>
