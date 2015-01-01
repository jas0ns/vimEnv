set nu
syntax on
set showmatch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
filetype on

"run pathogen
execute pathogen#infect()
filetype plugin indent on

"NERDTree mapping
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
