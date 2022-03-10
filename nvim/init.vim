" Plugins
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'

call plug#end()

" Line numbers
set number relativenumber

" Show tabs
set list
set listchars=tab:>-

" Spaces for tabs
set expandtab tabstop=4 shiftwidth=4

autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType liquid setlocal ts=2 sw=2 expandtab
autocmd FileType rs setlocal ts=4 sw=4 expandtab

