set nocompatible    " required for vundle
filetype  off       " required for vundle

" set the runtime path to include Vundle and initialize
" alternatively, pass a path where Vundle should install plugins
if has('win32')
	set rtp+=~/vimfiles/bundle/Vundle.vim/
	call vundle#begin('~/vimfiles/bundle/')
else
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
endif


" let Vundle manage Vundle, required
Plugin 'chubiei/Vundle.vim'

" install YouCompleteMe
Plugin 'chubiei/YouCompleteMe'

" Plugins
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'chubiei/synology-dev.vim'

Plugin 'chubiei/cscopemaps.vim'

Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on

" remove ycm tab binding, so it would be compatible with ultisnips
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_collect_identifiers_from_tags_files = 1

" fine tune ycm behavior
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" encodings
set fileencodings=utf-8
set encoding=utf-8

" syntax & highlight
syntax on
set ruler
set hlsearch

" tags - search parent folders
set tags+=./tags;

" title - show file name on title
set title

" terminal settings
" - enable 256 colors and utf-8 anyway
set t_Co=256
set termencoding=utf-8

" hotkey for tagbar
nmap <F8> :TagbarToggle<CR>

" lighlight cursorline
set cursorline

" make backspace work like most other apps
set backspace=2

" enable modeline
set modeline

" customized commands for windows
if has('win32')
	let g:ycm_path_to_python_interpreter = 'C:\Python27\python.exe'
	let g:vundle#git_cmd = '"C:\Program Files\Git\bin\git.exe"'
endif

