" VIM Configuration File
" '.vimrc'
" M. Yamanaka
" email: myamanaka@live.com
" website: csmyamanaka.com
" license: MIT (See 'LICENCE')

set nocompatible
filetype on
syntax on

"Tab behaviour
set tabstop=2
set expandtab

"Appearance
set autoindent
set showmatch

"I only need line numbers for specific things
au filetype c,python,java,haskell set number
