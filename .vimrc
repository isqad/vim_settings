execute pathogen#infect()
syntax on
filetype on
filetype plugin on
filetype indent on
colorscheme railscasts
autocmd vimenter * if !argc() | NERDTree | endif

set encoding=utf-8
set fileencoding=utf-8

" Set numbers
set nu

set mousehide

set autoindent

" Tabs and spaces
autocmd FileType c,cpp,h set expandtab smartindent shiftwidth=4 softtabstop=2
autocmd FileType html,xhtml,css,scss,xml,js,rb,sql,md set expandtab smartindent shiftwidth=2 softtabstop=2
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
"set tabstop=4
"set softtabstop=2
"set shiftwidth=2
"set expandtab
"set smartindent
"function TabToggle()
"  if &expandtab
"    set shiftwidth=4
"    set softtabstop=0
"    set noexpandtab
"  else
"    set shiftwidth=2
"    set softtabstop=2
"    set expandtab
"  endif
"endfunction
"nmap <F9> mz:execute TabToggle()<CR>'z

set hlsearch
set incsearch
set colorcolumn=120
set t_Co=256

autocmd BufWritePre * :%s/\s\+$//e
set runtimepath^=~/.vim/bundle/ag
let NERDTreeShowHidden=1

let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_enable_syntastic=1
