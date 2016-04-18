syntax enable
syntax on
filetype on
set nocompatible
set nu
set showmatch
set cursorline
"indent set
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set cindent
set autoindent

set nobackup

set fileencodings=utf-8
set termencoding=utf-8
set encoding=utf-8
set completeopt-=preview

"run pathogen
execute pathogen#infect()
filetype plugin indent on

"set mapleader
let mapleader = ","

"add map xxd to check binary
map <leader>x :%!xxd<CR>
map <leader>X :%!xxd -r<CR>

".vimrc open shortcut
map <leader>v :e ~/.vimrc<CR>

"colorscheme
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

"NERDTree mapping
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

"CtrlP
"default mode
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

"ctags config
set tags=tags;
set autochdir

"Taglist config
let TList_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_WinWidth=40
nmap <F4> :TlistToggle<CR>
nmap <C-\> :tnext<CR>

"vim-go custom mapping
au FileType go nmap <Leader>p :GoImports<CR>
au FileType go nmap <Leader>f :GoFmt<CR>
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>d <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

"fold mapping
au FileType go nmap <F5> $zf%
au FileType go nmap <F6> zd
au FileType c nmap <F5> zf%
au FileType c nmap <F6> zd
au FileType cpp nmap <F5> zf%
au FileType cpp nmap <F6> zd


"YCM config
nmap <leader>df :YcmCompleter GoTo<CR>
let g:ycm_global_ycm_extra_conf='/root/.vim/.ycm_extra_conf.py'
let g:syntastic_quite_messages = {"level": "warnings", "type": "style"}
let g:ycm_collect_identifiers_from_tags_files = 1
"disable syntastic
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf=0
let g:ycm_auto_trigger = 1
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_complete_in_comments = 1

"PowerLine
set laststatus=2   " Always show the statusline
let g:Powerline_symbols = 'fancy'
