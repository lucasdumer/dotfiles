call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'

call plug#end()

set hidden
set number
set nowrap
set inccommand=split

nnoremap <f2> :NERDTreeToggle<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <c-s> :w<cr>
nnoremap <c-r> :%s/

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

