"Deprecated for nvim
" Not up-to-date
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'

Plug 'scrooloose/syntastic'
"Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/nerdcommenter'
"Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'junegunn/fzf'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'jalvesaq/Nvim-R'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'edkolev/tmuxline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-multiple-cursors'

Plug 'jceb/vim-orgmode'
Plug 'ryanss/vim-hackernews'
Plug 'joshhartigan/vim-reddit'
Plug 'itchyny/calendar.vim'

"Plug 'lervag/vimtex'
"Plug 'vim-latex/vim-latex'

call plug#end()

"if !has('nvim')
colorscheme gruvbox
set background=dark
"endif

set t_Co=256
set linespace=0
set number
set ignorecase
set smartcase
set incsearch

"Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright


"syntax
let python_hightlight_all=1
syntax on

let g:livepreview_previewer = 'zathura'

"if !has('nvim')
set clipboard+=unnamedplus
"endif

"set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='ubaryd'

let g:calendar_google_calendar = 1

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'
if !exists('g:airline_symbols')
	    let g:airline_symbols = {}
    endif

    " unicode symbols
     let g:airline_left_sep = '»'
     let g:airline_left_sep = '▶'
     let g:airline_right_sep = '«'
     let g:airline_right_sep = '◀'
     let g:airline_symbols.linenr = '␊'
     let g:airline_symbols.linenr = '␤'
     let g:airline_symbols.linenr = '¶'
     let g:airline_symbols.branch = '⎇'
     let g:airline_symbols.paste = 'ρ'
     let g:airline_symbols.paste = 'Þ'
     let g:airline_symbols.paste = '∥'
     let g:airline_symbols.whitespace = 'Ξ'
    
   " airline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''


highlight NonText ctermbg=none
highlight Normal guibg=NONE ctermbg=NONE


