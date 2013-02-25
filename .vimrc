syntax on

" Pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on

set grepprg=grep\ -nH\ $*

map <F5> :setlocal spell! spelllang=en_gb<CR>

let g:syntastic_python_checkers=['pyflakes']
