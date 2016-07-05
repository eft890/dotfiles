call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'
Plug 'scwood/vim-hybrid'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'Raidmondi/delimitMate'

call plug#end()

set hls						" Search highlight
set number					" Line numbers
set ruler
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme solarized
