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
au filetype c,cpp,sh,python,java,haskell,php,html,css set number
"since I use rofi sometimes, rasi files should be treated as css files
au BufNewFile,BufRead *.rasi set filetype=css

"I usually write make files regardless of the language I use so this is set globally
nnoremap <leader>c :make<CR>
