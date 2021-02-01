call plug#begin('~/.vim/plugged')

" Plug 'mhinz/vim-startify'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'ycm-core/YouCompleteMe' 
" Plug 'vim-syntastic/syntastic'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
" Plug 'mattn/emmet-vim'
" Plug 'easymotion/vim-easymotion'
Plug 'voldikss/vim-floaterm'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

Plug 'jceb/vim-orgmode'
" Plug 'mattn/calendar-vim'
" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-speeddating'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'rafi/awesome-vim-colorschemes' "includes gruvbox
Plug 'dracula/vim'
Plug 'gosukiwi/vim-atom-dark'
 
" Plug 'sheerun/vim-polyglot'
Plug 'neovimhaskell/haskell-vim'

Plug 'habamax/vim-godot'

Plug 'OmniSharp/omnisharp-vim'
Plug 'OrangeT/vim-csharp'

Plug 'cespare/vim-toml'
 
Plug 'rhysd/vim-clang-format'
Plug 'jackguo380/vim-lsp-cxx-highlight'

" " Prettier
" Plug 'prettier/vim-prettier', {
"       \ 'do': 'yarn install',
"       \ 'branch': 'release/1.x',
"       \ 'for': [
"       \ 'javascript',
"       \ 'typescript',
"       \ 'css',
"       \ 'less',
"       \ 'scss',
"       \ 'json',
"       \ 'graphql',
"       \ 'markdown',
"       \ 'vue',
"       \ 'lua',
"       \ 'php',
"       \ 'python',
"       \ 'ruby',
"       \ 'html',
"       \ 'swift' ] }


" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
syntax on

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_classic_highlighting = 1
