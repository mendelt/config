" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'cespare/vim-toml'
Plug 'mmai/vim-markdown-wiki'
Plug 'tpope/vim-surround'

call plug#end()

" No arrow keys
noremap <up> <nop>
noremap! <up> <nop>
noremap <down> <nop>
noremap! <down> <nop>
noremap <left> <nop>
noremap! <left> <nop>
noremap <right> <nop>
noremap! <right> <nop>

" Line numbers
set number relativenumber

" Colors
colorscheme base16-woodland

" Show tabs
set list
set listchars=tab:>-

" Spaces for tabs
set expandtab tabstop=4 shiftwidth=4

autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType liquid setlocal ts=2 sw=2 expandtab
autocmd FileType rs setlocal ts=4 sw=4 expandtab

