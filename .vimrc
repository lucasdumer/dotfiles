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

"Abre a tree
nnoremap <f2> :NERDTreeToggle<cr>
inoremap <f2> <esc>:NERDTreeToggle<cr>
vnoremap <f2> <esc>:NERDTreeToggle<cr>

"Recarrega os arquivo da tree
nnoremap <f5> :call NERDTreeReload()<cr>
inoremap <f5> <esc>:call NERDTreeReload()<cr>
vnoremap <f5> <esc>:call NERDTreeReload()<cr>

"Pesquisa de arquivos
nnoremap <c-p> :Files<cr>
inoremap <c-p> <esc>:Files<cr>
vnoremap <c-p> <esc>:Files<cr>

"Pesquisa de texto nos arquivos
nnoremap <c-a-f> :Ag<space>
inoremap <c-a-f> <esc>:Ag<space>
vnoremap <c-a-f> <esc>:Ag<space>

"Substituir texto no arquivo :%s/texto_pesquisa/texto_novo
nnoremap <c-r> :%s/
inoremap <c-r> :%s/
vnoremap <c-r> :%s/

"Salva arquivo
nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>a
vnoremap <c-s> <esc>:w<cr>v

"Desfaz ultima alteracao
nnoremap <c-z> :undo<cr>
inoremap <c-z> <esc>:undo<cr>
vnoremap <c-z> <esc>:undo<cr>

"Refaz ultima alteracao
nnoremap <c-y> :redo<cr>
inoremap <c-y> <esc>:redo<cr>
vnoremap <c-y> <esc>:redo<cr>

"Faz uma copia da linha atual abaixo
nnoremap <c-d> YPj
inoremap <c-d> <esc>YPj
vnoremap <c-d> <esc>YPj

"Move linha atual para cima/baixo
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

fun! NERDTreeReload()
    :NERDTreeFocus
    call feedkeys("R")
endf
