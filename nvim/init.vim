call plug#begin()

" Colors
Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'
Plug 'scwood/vim-hybrid'

" Utilities
Plug 'scrooloose/nerdtree'                      " Vim file explorer
Plug 'Xuyuanp/nerdtree-git-plugin'              " Show git status of files in NERDTree
Plug 'scrooloose/nerdcommenter'                 " Commenting utilities
Plug 'jeffkreeftmeijer/vim-numbertoggle'        " Line number toggling utility
Plug 'airblade/vim-gitgutter'                   " Git gutter on left of line numbers
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'

" Display
Plug 'ryanoasis/vim-devicons'                   " Better icon set for various vim utilities
Plug 'bling/vim-airline'                        " Better vim status bar
Plug 'kshenoy/vim-signature'                    " Display marks in gutter

" Syntax
Plug 'jiangmiao/auto-pairs'                     " Auto-add punctuation pairs
Plug 'tpope/vim-surround'                       " Keymaps for adding surrounding text
Plug 'pangloss/vim-javascript'                  " Better vim javascript syntax highlighting

call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme solarized

set rnu                                         " Default to relative line numbers on startup
set hls                                         " Search highlight
set cursorline                                  " Highlight current line
hi CursorLine cterm=NONE guibg=#391414          " Set highlight line colors
set ruler                                       " Row and column counters
set expandtab                                   " Spaces instead of tabs
set shiftwidth=2                                " Two spaces
set softtabstop=2
set updatetime=250
set showcmd

" NERDTree setup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | else | NERDTree | wincmd p | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <C-N> :NERDTreeToggle<cr>

" NERDTree settings
let NERDTreeShowHidden = 1

" NERDCommenter settings
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" Signature settings
let g:SignatureMarkTextHLDynamic = 1

" Gitgutter settings
let g:gitgutter_sign_column_always = 1

" Incsearch.vim settings
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n <Plug>(incsearch-nohl-n)
map N <Plug>(incsearch-nohl-N)
map * <Plug>(incsearch-nohl-*)
map # <Plug>(incsearch-nohl-#)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-g/)

" Disable arrow keys in insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Writing and quitting keymaps
nnoremap qq :q<cr>
nnoremap QQ :q!<cr>
nnoremap qa :qa<cr>
nnoremap QA :qa!<cr>
nnoremap ww :w<cr>
nnoremap wq :wq<cr>

" Avoid escape
inoremap dj <esc>
