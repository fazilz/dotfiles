"this is the plugins area
call plug#begin('~/.vim/plugged')

"Color scheme solarized! 
Plug 'altercation/vim-colors-solarized'
" Status Bar
Plug 'bling/vim-airline'
" Auto PEP-8
Plug '/tell-k/vim-autopep8'
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
set tw=79           " set the width of the file (Automatically creates a new line when you hit the boundary
" ######################
" TABS AND INDENTS! 
set tabstop=4		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set expandtab		" tabs are spaces
set shiftwidth=4    " size of an "indent"
set smarttab        " make tab insert indents instead of a tab at the start
" To enable the vim-airline status bar, without this it only works with 2 or
" more splits! 
set laststatus=2
" airline (status) options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='base16'
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun  
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

