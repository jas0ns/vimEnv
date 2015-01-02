set nocompatible
set nu
syntax on
set showmatch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
filetype on

"colorscheme
"colorscheme solarized
"set background=dark

"run pathogen
execute pathogen#infect()
filetype plugin indent on

"NERDTree mapping
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

"set mapleader
let mapleader = ","

"vim-go custom mapping
au FileType go nmap <Leader>p :GoImports<CR>
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)
