"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
" ____________________________

"set shell=/bin/bash
set encoding=UTF-8
scriptencoding utf-8
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.config/vim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'KabbAmine/vullScreen.vim'
Plugin 'alvan/vim-closetag'
Plugin 'vim-syntastic/syntastic'
Plugin 'diepm/vim-rest-console'
Plugin 'pangloss/vim-javascript'
"Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-surround'
"Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-user'
Plugin 'previm/previm'
Plugin 'prabirshrestha/async.vim'
Plugin 'christianrondeau/vim-base64'
Plugin 'dylanaraps/wal.vim'
Plugin 'kovetskiy/sxhkd-vim'
"Plugin 'prettier/vim-prettier', { 'do': 'npm install' }
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'maxmellon/vim-jsx-pretty'
"Plugin 'leafgarland/typescript-vim'
"Plugin 'peitalin/vim-jsx-typescript'
Plugin 'dense-analysis/ale'
"Plugin 'Quramy/tsuquyomi'
Plugin 'sbdchd/neoformat'
" Colorschemes
Plugin 'dracula/vim'
Plugin 'morhetz/gruvbox'
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
Plugin 'jacoborus/tender.vim'
Plugin 'larsbs/vimterial_dark'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lifepillar/vim-solarized8'
" Vim-Devicons is required to be the last plugin
Plugin 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype on
syntax on

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
 \ 'javascript': ['prettier', 'eslint'],
 \ 'typescript': ['prettier', 'eslint']
 \ }

" NERDTree Configurations
let NERDTreeShowLineNumbers=1
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif
let NERDTreeWinSize=25

" Enable format on save
autocmd BufWritePre,InsertLeave *.js,*.jsx,*.ts,*.tsx,*.css,*.json,*.html Neoformat

" Generates an import to the word at cursor location
nnoremap <C-i> :TsuImport<CR>

" let g:prettier#bracket_spacing = 'true'
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"Set true colors to work with tmux aswell
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
"set termguicolors

set list listchars=eol:\¬,tab:\|\·,trail:\·,space:\ 

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

silent! nmap <C-p> :GFiles --exclude-standard --others --cached<CR>

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<c-Space>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:UltiSnipsEditSplit = "context"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/vim/UltiSnips']

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP ~/Dev'

let g:previm_open_cmd = 'firefox'

augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

"let g:gruvbox_italic=1
"colorscheme gruvbox

"colorscheme dracula
"colorscheme vimterial_dark
"colorscheme tender
"colorscheme molokai
"colorscheme solarized8
"colorscheme badwolf
"colorscheme tone
"colorscheme goodwolf
colorscheme wal

set noshowmode
set timeoutlen=300
let g:airline_theme='gruvbox'
"let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

""autocmd VimEnter * NERDTree
"autocmd VimEnter * VullScreen

" set leader key to space
:let mapleader = " "

"cd /home/barbafh/Dev

set guifont=Fira\ Code\ 14
set bg=dark 
set splitbelow splitright 
set tabstop=2
set expandtab
set shiftwidth=2
set smarttab
set autoindent
set smartindent
set number relativenumber

" Set the default spellcheck languages and binding to toggle on/off
set spelllang=pt,en
nnoremap <leader>sc :set spell!<CR>

let g:vrc_curl_opts = {
  \ '--connect-timeout' : 10,
  \ '-b': '/path/to/cookie',
  \ '-c': '/path/to/cookie',
  \ '-L': '',
  \ '-i': '',
  \ '--max-time': 60,
  \ '--ipv4': '',
  \ '-k': '',
\}

autocmd BufNewFile,BufRead *.http set syntax=rest ft=rest
autocmd BufWritePost,FileWritePost *.ms execute "!groff -ms %:r.ms -k -T pdf > %:r.pdf"
autocmd BufNewFile,BufRead .vrapperrc set syntax=vim

""" Templates 

" Html
au BufNewFile * silent! 0r ~/.config/vim/templates/%:e.tpl

vnoremap <Up> <NOP>
inoremap <Up> <NOP>
vnoremap <Down> <NOP>
inoremap <Down> <NOP>
vnoremap <Left> <NOP>
inoremap <Left> <NOP>
vnoremap <Right> <NOP>
inoremap <Right> <NOP>

nnoremap ; :
inoremap {<CR> {<CR><BS>}<Esc>ko
inoremap {<Space> {<Space><Space>}<Esc>hi
inoremap (<CR> (<CR><BS>)<Esc>ko
inoremap (<Space> (<Space><Space>)<Esc>hi
inoremap [<CR> [<CR><BS>]<Esc>ko
inoremap [<Space> [<Space><Space>]<Esc>hi

noremap <C-l> <c-w>l
noremap <C-k> <c-w>k
noremap <C-j> <c-w>j
noremap <C-h> <c-w>h

" Bindings for portuguese characters on US keyboard
inoremap ;a ã
inoremap ;o õ
inoremap ;c ç
inoremap `e é
inoremap `i í
inoremap `a á
inoremap `o ó
inoremap `u ú
inoremap ^e ê
inoremap ``a à

inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>dq ciw"<Esc>pa"<Esc>
nnoremap <leader>sq ciw'<Esc>pa'<Esc>
nnoremap <leader>p ciw(<Esc>pa)<Esc>
nnoremap <leader>bc ciw[<Esc>pa]<Esc>

" Mappings for next buffer(bn), previous buffer(bp) and close buffer(bd)
nnoremap <leader>l :bn<CR>
nnoremap <leader>h :bp<CR>
nnoremap <leader>d :bd<CR>

" Groff compile mapping
"nnoremap <leader>ms :silent !groff -ms -ks % -T pdf > %:r.pdf<CR>:redraw!<CR>
nnoremap <leader>ms :silent !groff -ms %:r.ms -k -T pdf > %:r.pdf<CR>:redraw!<CR>
nnoremap <leader>ke :silent !killall entr

nnoremap <c-p> :FZF<CR>

" Find and replaces the next placeholder <++> while in insert mode
"inoremap <Space><Space> <Esc>/<++><Enter>"_c4l

" Closes ) and ], ignoring it if they are already present
function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

" Word Processor Function
func! WordProcessorMode()
 setlocal textwidth=80
 setlocal smartindent
 setlocal spell spelllang=pt_br
 setlocal noexpandtab
endfu
" WordProcessor Mapping
com! WP call WordProcessorMode()

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.


let g:closetag_filenames = '*.html,*.xml,*.xhtml,*.phtml,*.js,*.snippet,*.py'

let g:jsx_ext_required = 0
" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,js,snippet,py'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'


