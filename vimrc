""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "
set number
syntax on
set enc=utf-8
set history=1000 " How many lines of history to remember
set relativenumber

" When editing a file, always jump to the last known cursor position.
" Don't do it for commit messages, when the position is invalid, or when
" inside an event handler (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove declared plugins
function! s:UnPlug(plug_name)
  if has_key(g:plugs, a:plug_name)
    call remove(g:plugs, a:plug_name)
  endif
endfunction
command!  -nargs=1 UnPlug call s:UnPlug(<args>)

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
" Plug 'lervag/vimtex'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD Commenter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
"let g:NERDTrimTrailingWhitespace = 1
let g:NERDDefaultAlign = 'left'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_solarized_bg='simple'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python-mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pymode = 1
let g:pymode_python = 'python'
let g:pymode_trim_whitespaces = 1
let g:pymode_options_max_line_length = 79
let g:pymode_virtualenv_path = '/anaconda2'
let g:pymode_run_bind = '<leader>r'
let g:pymode_run = 1
let g:pymode_folding = 0
let g:pymode_indent = 1
let g:pymode_lint_on_write = 0
let g:pymode_lint_on_fly = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
