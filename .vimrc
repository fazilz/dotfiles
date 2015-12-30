"this is the plugins area
call plug#begin('~/.vim/plugged')

"Color scheme gotham! 
Plug 'altercation/vim-colors-solarized'

"ending the plugin area
call plug#end()
:set cpoptions+=$ " This adds the dollar sign at the end of the word you are editing. 
" THIS IS THE UI AREA!!!!!
" ############################ 
syntax enable 		" Color changed to dark version of solarized. 
set background=dark
colorscheme solarized
set number 	    	" enabling the side numbers
set cursorline		" highlight current line
set showcmd 		" show the last used in the bottom right
set showmatch		" highlight matching brackets
set lazyredraw		" a good explanation on dougblack.io/words/a-good-vimrc.html
set wildmenu		" visual autocomplete for command menu
filetype indent on	" load filtype-specific indent files
set colorcolumn=80  " show the vertical bar thing while editing PEP-8!
" ######################
" TABS AND INDENTS! 
set tabstop=4		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set expandtab		" tabs are spaces
