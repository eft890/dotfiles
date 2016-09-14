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
Plug 'vim-airline/vim-airline'                  " Better vim status bar
Plug 'vim-airline/vim-airline-themes'           " Themes!
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
hi OverLength cterm=NONE guibg=#802b2b guifg=#eeeeee
match OverLength /\%81v.\+/
set ruler                                       " Row and column counters
set expandtab                                   " Spaces instead of tabs
set shiftwidth=2                                " Two spaces
set softtabstop=2
set updatetime=250
set showcmd
set splitbelow
set splitright

" NERDTree setup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | on | endif
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" nnoremap <silent> <C-n> :NERDTreeToggle<cr>
let NERDTreeShowHidden = 1

" NERDCommenter settings
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" Airline settings
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ '' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '' : 'S',
    \ }
let g:airline_theme = 'bubblegum'

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

let g:UseNumberToggleTrigger = 1

let mapleader = ","

" Window control
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j<C-w>_
nnoremap <C-k> <C-w>k<C-w>_
nnoremap <C-l> <C-w>l
nnoremap <Leader><C-j> <C-w>J
nnoremap <Leader><C-k> <C-w>K
nnoremap <C-_> <C-w>_
nnoremap <C-s> <C-w>s
nnoremap <C-v> <C-w>v
nnoremap <C-w><C-w> :q<cr>

" Move view pane
nnoremap ∆ <C-e>
nnoremap ˚ <C-y>

" Disable arrow keys in insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Writing and quitting keymaps
nnoremap <Leader>qq :q<cr>
nnoremap <Leader>QQ :q!<cr>
nnoremap <Leader>qa :qa<cr>
nnoremap <Leader>QA :qa!<cr>
nnoremap <Leader>ww :w<cr>
nnoremap <Leader>wq :wq<cr>

" Avoid escape
inoremap jd <esc>
