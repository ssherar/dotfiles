set nocompatible
filetype off

if empty(glob("~/.vim/autoload/plug.vim"))
  execute '!curl --create-dirs -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()

set shell=zsh
set history=400
filetype plugin indent on

set autoread

let maleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>
nmap <leader>s :source ~/.vimrc<cr>
map <leader>cd :cd %:p:h<cr>

syntax enable
colorscheme nord

set so=7
set cmdheight=2
set number
set lz
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set incsearch
set magic
set noerrorbells
set novisualbell
set t_vb=
set showmatch
set wildmenu
set hlsearch
nmap <leader>h :noh<cr>


set laststatus=2

set statusline=%m%f\  
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*\ %=
set statusline+=Line:%l/%L[%p%%]
set statusline+=\ Col:%c

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set nobackup
set nowb
set noswapfile

set expandtab
set shiftwidth=2
au FileType html,vim,javascript setl sw=2
au FileType html,vim,javascript setl ts=2
au FileType java,python setl sw=4
au FileType java,python setl ts=4
au FileType php setl sw=2
au FileType php setl ts=2
set smarttab
set lbr
set tw=500
set ai
set si
set cindent
set wrap


let g:syntastic_python_checkers = ['flake8', 'pyflakes']
map <C-n> :NERDTreeToggle<CR>
