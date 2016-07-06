call plug#begin()

" Colors
Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'
Plug 'scwood/vim-hybrid'

" Display
Plug 'ryanoasis/vim-devicons'
Plug 'bling/vim-airline'

" Utilities
Plug 'scrooloose/nerdtree'

" Syntax
Plug 'jiangmiao/auto-pairs'

call plug#end()

set hls						" Search highlight
set number					" Line numbers
set ruler					" Row and column counters
set expandtab					" Spaces instead of tabs
set shiftwidth=2				" Two spaces
set softtabstop=2
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme solarized
