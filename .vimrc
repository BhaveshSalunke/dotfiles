" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Add numbers to each line on the left-hand side.
set number

" Turn syntax highlighting on.
syntax on

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" PATHOGEN 
execute pathogen#infect()
syntax on
filetype plugin indent on

set nu
set formatoptions=tcroq
set hlsearch
set ruler
set laststatus=2
map <F2> [c:cp<RETURN>
map <F3> ]c:cn<RETURN>
set list listchars=tab:»·,trail:·

set backspace=indent,eol,start
set fo+=tcroqnvl1
set modeline
set modelines=5
set expandtab
set shiftwidth=4
set softtabstop=4
set cindent
set cinoptions=(0
"-----------------
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"------------

" PLUGINS ---------------------------------------------------------------- 
"   { :source % }
"   { :PlugInstall }

call plug#begin('~/.vim/plugged')

    "Plug 'flazz/vim-colorschemes'
    Plug 'morhetz/gruvbox'
    Plug 'itchyny/lightline.vim' "bottom highlighted line 
    Plug 'udalov/kotlin-vim'
    Plug 'Raimondi/delimitMate' "Braces assistance 
call plug#end()

" ----------------------------------------------------------------
set background=dark
colorscheme gruvbox

