""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
syntax on
set enc=utf-8
set history=1000 " How many lines of history to remember

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
filetype plugin indent on
