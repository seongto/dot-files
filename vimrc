call plug#begin('~/.vim/plugged')

Plug 'https://github.com/vim-scripts/ScrollColors.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/vim-scripts/Align.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/mxw/vim-jsx.git'
Plug 'https://github.com/w0rp/ale.git'
Plug 'https://github.com/vovkasm/input-source-switcher.git' "명령모드 자동 영어 변경
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }


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
"set encoding=utf-8
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
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" set smartindent - 얘 때문에 꼬이는 거 같아서 일단 주석처리.
set expandtab
set shiftwidth=2 ">>, << 키로 들여/내어 쓰기할 때, 스페이스 개수



"""""""""""" Nerdtree """""""""""""""""
map <C-n> :NERDTreeToggle<CR>



"""""""""""" esc 때 자동 한영전환""""""""""""""
set noimd



"""""""""""" eslint 관련 셋팅 """"""""""""""
let g:jsx_ext_required = 0 
let g:prettier#autoformat = 0 
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

