" starts with pathogen
call pathogen#infect()
call pathogen#helptags()

syntax on
set hlsearch

" enable file type plugins
filetype on
filetype plugin on

" swp files location
set directory=/tmp

" complete option ... I have preview window
set completeopt="menu"

" -----------------------------------------------------------
"  ENCODING
" -----------------------------------------------------------
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,usc-bom,big5,gb2312,latin1 


" ----------------------------------------------------------
" PLUGIN OPTION
" ----------------------------------------------------------
" AutoComplPop
" - auto OmniCppComplete
let g:acp_behaviorUserDefinedFunction = 'omni#cpp#complete#Main'
let g:acp_behaviorUserDefinedMeets = 'acp#meetsForKeyword'

" OmniCppComplete
" - options
let OmniCpp_SelectFirstItem = 2
" - close the preview window automatically after a completion
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif


