call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug  'dense-analysis/ale'
 Plug 'ycm-core/YouCompleteMe'

" NerdTree plugins
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Ranger in vim
" Plug 'francoiscabrol/ranger.vim'
" Plug 'rbgrouleff/bclose.vim'

" FZF for file search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" General code utilities
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
" Plug 'RRethy/vim-hexokinase',  { 'do': 'make hexokinase' }
Plug 'sheerun/vim-polyglot'
" Plug 'mattn/emmet-vim'
" Plug 'unblevable/quick-scope'
" Plug 'voldikss/vim-floaterm'
Plug 'easymotion/vim-easymotion'

" Visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'
Plug 'ryanoasis/vim-devicons'
Plug 'rafi/awesome-vim-colorschemes' "includes gruvbox
Plug 'sjl/badwolf'

" GDScript
" Plug 'clktmr/vim-gdscript3'
" Plug 'habamax/vim-godot'

" C# 
" Plug 'OrangeT/vim-csharp'
Plug 'OmniSharp/omnisharp-vim'
" Plug 'nickspoons/vim-sharpenup'


" " Prettier
" Plug 'prettier/vim-prettier', {
"       \ 'do': 'yarn install',
"       \ 'branch': 'release/1.x',
"       \ 'for': [
"       \ 'gdscript3',
"       \ 'javascript',
"       \ 'typescript',
"       \ 'csharp',
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
