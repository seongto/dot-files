call plug#begin('~/.vim/plugged')

Plug 'https://github.com/vim-scripts/ScrollColors.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/wikitopian/hardmode.git'
Plug 'https://github.com/vim-scripts/Align.git'

call plug#end()


syntax on
filetype plugin indent on


" vim 실행시 자동으로 nerdtree 실행하 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" vim 실행시 자동으로 하드모드 실행
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()


