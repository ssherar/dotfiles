set nocompatible
filetype off

""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""
set shell=zsh
set history=400
filetype plugin indent on

"Set to autoread when a file is changed from the outside
set autoread

"Set mapleader
let maleader = ","
let g:mapleader = ","

"Fast saving
nmap <leader>w :w!<cr>

"Fast reloadng of the .vimrc
nmap <leader>s :source ~/.vimrc<cr>

"Change directories to current working dir
map <leader>cd :cd %:p:h<cr>

"Pathogen
call pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()

""""""""""""""""""""""""""""""""
" Colours and Fonts
""""""""""""""""""""""""""""""""
"Enable syntax hl
syntax enable

"Set the colourscheme to tpope's lovely vividchalk
colorscheme vividchalk

""""""""""""""""""""""""""""""""
" VIM user interface
""""""""""""""""""""""""""""""""

"Set 7 lines to the cursors -when moving vertical..
set so=7

"Set the commandbar to be 2 high
set cmdheight=2

"Show line numbers
set number

"Lazyredraw
set lz

"Change buffer - without saving
set hid

"Configure the backspace movement
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"Ignore case when searching
set ignorecase
set incsearch

"Oooooh magical 
set magic

"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"Show matching brackets
set showmatch

"Wildmenu
set wildmenu

"Highlight search things
set hlsearch
nmap <leader>h :noh<cr>


"""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""
set laststatus=2

set statusline=%m%f\  
set statusline+=%{fugitive#statusline()}\ 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*\ %=
set statusline+=Line:%l/%L[%p%%]
set statusline+=\ Col:%c

""""""""""""""""""""""""""""""
" Tabs & Windows
""""""""""""""""""""""""""""""

"Easier movement for windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

""""""""""""""""""""""""""""""
" Paran & Delim autocompletion
""""""""""""""""""""""""""""""

"Sexy Sexy methods can be found here
"http://vim.wikia.com/wiki/Making_Parenthesis_And_Brackets_Handling_Easier
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

function! ClosePair(char)
  if getline('.')[col('.') - 1] == a:char
    return "\<Right>"
  else
    return a:char
  endif
endf

function! CloseBracket()
  if match(getline(line('.') + 1), '\s*}') < 0
    return "\<CR>}"
  else
    return "\<Esc>j0f}a"
  endif
endf

function! QuoteDelim(char)
  let line = getline('.')
  let col = col('.')
  if line[col - 2] == "\\"
    return a:char
  elseif line[col - 1] == a:char
    return "\<Right>"
  else
    return a:char.a:char."\<Esc>i"
  endif
endf

""""""""""""""""""""""""""""""""
" Buffer related
""""""""""""""""""""""""""""""""
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""
" Text options
"""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=2
au FileType html,python,vim,javascript setl sw=2
au FileType html,python,vim,javascript setl ts=2
au FileType java setl sw=4
au FileType java setl ts=4

set smarttab
set lbr
set tw=500
set ai
set si
set cindent
set wrap

