"this is the plugins area
call plug#begin('~/.vim/plugged')

" Status BarPlug 'bling/vim-airline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'

" Auto PEP-8
Plug '/tell-k/vim-autopep8'
"ending the plugin area
call plug#end()
:set cpoptions+=$ " This adds the dollar sign at the end of the word you are editing.
" THIS IS THE UI AREA!!!!!
" ############################
let g:solarized_termcolors=256
"set t_Co=256
colorscheme solarized
syntax enable 		" Color changed to dark version of solarized.
set number 	    	" enabling the side numbers
set cursorline		" highlight current line
set showcmd 		" show the last used in the bottom right
set showmatch		" highlight matching brackets
set lazyredraw		" a good explanation on dougblack.io/words/a-good-vimrc.html
set wildmenu		" visual autocomplete for command menu
filetype indent on	" load filtype-specific indent files
set colorcolumn=90  " show the vertical bar thing while editing PEP-8!
set tw=89           " set the width of the file (Automatically creates a new line when you hit the boundary
" ######################
" TABS AND INDENTS!
set expandtab ts=4 sw=4		" tabs are spaces ts=tabstop sw=shiftwidth

" FONTS
set guifont=Monaco:h16
" To enable the vim-airline status bar, without this it only works with 2 or
" more splits!
" airline (status) options
set laststatus=2
let g:airline_theme='base16'

" C-C++ autocomplete
let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
" makes sure the preview scratch window never opens
set completeopt-=preview

" fuzzy file finder
set runtimepath^=~/.vim/bundle/ctrlp.vim


fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

