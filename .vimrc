call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'mhartington/oceanic-next'

call plug#end()

set hidden
set number
set nowrap
set inccommand=split
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set termguicolors
set clipboard=unnamedplus

nnoremap <f2> :NERDTreeToggle<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <c-r> :%s/
nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>a

nnoremap <c-z> :undo<cr>
inoremap <c-z> <esc>:undo<cr>
nnoremap <c-y> :redo<cr>
inoremap <c-y> <esc>:redo<cr>

nnoremap <c-d> YPj
inoremap <c-d> <esc>YPj

nnoremap <c-k> ddkP
nnoremap <c-up> ddkP
nnoremap <c-j> ddjP
nnoremap <c-down> ddjP

vmap <c-x> d
vmap <c-v> p
vmap <c-c> y

nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

syntax enable
colorscheme OceanicNext
