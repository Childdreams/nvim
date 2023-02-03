


let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  source $MYVIMRC
endif

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline-themes'
Plug 'voldikss/vim-floaterm'

call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" disable |K| for :GoDoc
let g:go_doc_keywordprg_enabled = 0

if !empty(glob(data_dir . '/plugged/gruvbox'))
  colorscheme gruvbox
  set background=dark
endif

set nu
set relativenumber
set cursorline
set syntax=on
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" ESC
imap jk <Esc>
imap kj <Esc>

" move faster
noremap J 5j
noremap K 5k

" split
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

" tab
map tn :tabe<CR>
map tj :-tabnext<CR>
map tk :+tabnext<CR>

nnoremap tt :NERDTreeToggle<CR>
nnoremap lazygit :FloatermNew  lazygit
nnoremap ff :FloatermNew
nmap <F8> :TagbarToggle<CR>

" floaterm
let g:floaterm_height = 0.9
let g:floaterm_width = 0.9
