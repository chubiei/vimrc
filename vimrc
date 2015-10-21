set nocompatible    " required for vundle
filetype  off       " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'chubiei/Vundle.vim'

" install YouCompleteMe
Plugin 'chubiei/YouCompleteMe'

" Plugins
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'steffanc/cscopemaps.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on

" remove ycm tab binding, so it would be compatible with ultisnips
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_collect_identifiers_from_tags_files = 1

" encodings
set fileencodings=utf-8
set encoding=utf-8

" syntax & highlight
syntax on
set ruler
set hlsearch

" tags - search parent folders
set tags=./tags;

" title - show file name on title
set title

