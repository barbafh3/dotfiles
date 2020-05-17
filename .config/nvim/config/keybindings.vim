" Source changes to init.vim
nnoremap <C-n> :so ~/.config/nvim/init.vim<Cr>

" Removes arrow movement
vnoremap <Up> <NOP>
inoremap <Up> <NOP>
vnoremap <Down> <NOP>
inoremap <Down> <NOP>
vnoremap <Left> <NOP>
inoremap <Left> <NOP>
vnoremap <Right> <NOP>
inoremap <Right> <NOP>

" Remap : to ;
nnoremap ; :

" Change 0 from line start to first non-space character
nnoremap 0 ^
vnoremap 0 ^

" set leader key to space
:let mapleader = " "
:let maplocalleader = "ç"

" Change tabs
nnoremap <leader><S-l> :tabn<CR>
nnoremap <leader><S-h> :tabp<CR>

" Change buffers
nnoremap <leader>l :bn<Cr>
nnoremap <leader>h :bp<Cr>

" Close buffer
nnoremap <leader>d :bd<CR>

set listchars=tab:→\ ,trail:␣,extends:…,eol:⏎

silent! nmap <C-p> :GFiles --exclude-standard --others --cached<CR>

" Copy from neovim to system clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from system clipboard to neovim
nnoremap <leader>p "+p
nnoremap <leader>P "+P
