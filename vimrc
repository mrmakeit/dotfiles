set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'vimwiki/vimwiki'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'jreybert/vimagit'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-rhubarb'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/vim-mastodon'
Plugin 'wannesm/wmgraphviz.vim'
Plugin 'initrc/eclim-vundle'
Plugin 'derekwyatt/vim-scala'
Plugin 'nvie/vim-flake8'
Plugin 'freitass/todo.txt-vim'
Plugin 'purescript-contrib/purescript-vim'
Plugin 'kchmck/vim-coffee-script'
call vundle#end()   
filetype plugin indent on
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set exrc
set hidden
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
