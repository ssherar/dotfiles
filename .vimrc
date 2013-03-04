syntax on

" Pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on

set grepprg=grep\ -nH\ $*

map <F5> :setlocal spell! spelllang=en_gb<CR>

set statusline=%m%f\  
set statusline+=%{fugitive#statusline()}\ 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*\ %=
set statusline+=Line:%l/%L[%p%%]
set statusline+=\ Col:%c

set laststatus=2

let g:syntastic_python_checkers=['pyflakes']
