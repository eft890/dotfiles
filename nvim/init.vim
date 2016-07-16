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
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Syntax
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'

call plug#end()

set rnu
set hls						" Search highlight
set ruler					" Row and column counters
set expandtab					" Spaces instead of tabs
set shiftwidth=2				" Two spaces
set softtabstop=2
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme solarized

inoremap dj <esc>

" NERDTree setup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | else | NERDTree | wincmd p | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <C-N> :NERDTreeToggle<cr>

" Disable arrow keys in insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Quitting
nnoremap qq :q<cr>
nnoremap QQ :q!<cr>
nnoremap qa :qa<cr>
nnoremap QA :qa!<cr>
nnoremap WW :w<cr>
nnoremap WQ :wq<cr>
