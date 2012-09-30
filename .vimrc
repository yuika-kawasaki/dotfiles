set encoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp

set number
set tabstop=4
set expandtab
set showmatch
set smartindent
set whichwrap=b,s,h,l,<,>,[,]

set t_Co=256

syntax on 
colorscheme desert
set nocompatible

highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/


"for Vundle
 set nocompatible               " be iMproved
 filetype off                   " required!
 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()
 " let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'
 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " ...
 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
Bundle 'JavaScript-syntax'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'pangloss/vim-javascript'
Bundle 'git://github.com/scrooloose/syntastic.git'
Bundle 'git://github.com/thinca/vim-quickrun.git'
Bundle 'git://github.com/Shougo/neocomplcache.git'

" syntastic
let g:syntastic_mode_map = { 'mode': 'active',
 \ 'active_filetypes': [], 
 \ 'passive_filetypes': ['html', 'javascript'] }
let g:syntastic_auto_loc_list = 1 
let g:syntastic_javascript_checker = 'gjslint'
autocmd FileType javascript noremap <buffer> <up> :<C-u>!/usr/local/bin/gjslint %<cr>

" neocomplcache
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化
