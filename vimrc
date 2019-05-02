call plug#begin('~/.vim/plugged')

Plug 'https://github.com/vim-scripts/ScrollColors.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/vim-scripts/Align.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/mxw/vim-jsx.git'
Plug 'https://github.com/w0rp/ale.git'

call plug#end()


syntax on
filetype plugin indent on

""""""""""""""""""""""""""""""""""
" Disable arrow keys
""""""""""""""""""""""""""""""""""
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Show line numbers
set number

set t_Co=256          " enables 256 colors
syntax enable
set encoding=utf-8
set noundofile
set history=1000      " remember more commands and search history
set undolevels=1000   " use many muchos levels of undo
set nobackup          " do not keep backup files, it's 70's style cluttering
set noswapfile        " do not write annoying intermediate swap files,
set showcmd           " show the command being typed
set ruler             " Always show current positions along the bottom
set cursorline        " highlight current line
set numberwidth=5     " We are good up to 99999 lines
set backspace=2       " make backspace work like most other apps


"""""""""""" For python """"""""""""""""""""""

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
set softtabstop=4



"""""""""""" vim for React """""""""""""""

" --- react 설치 폴더에 ESLint 설치 / 상단'w0rp/ale' 플러그인 설치.
"$ yarn add --dev eslint babel-eslint eslint-plugin-react
" --- ESLint run
"$ eslint --init



"""""""""""" Nerdtree """""""""""""""""
map <C-n> :NERDTreeToggle<CR>



""""""""""""""""""""""""""""""""""""""""""""


