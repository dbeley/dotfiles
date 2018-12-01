"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
"
"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
"
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'

Plug 'junegunn/fzf.vim'

Plug 'dylanaraps/wal'
Plug 'mhinz/vim-startify'

Plug 'itchyny/lightline.vim'

call plug#end()

" Performances 
set synmaxcol=200
let did_install_default_menus=1
set lazyredraw

" Coloration syntaxique
syntax on
"colorscheme gruvbox
set background=dark
colorscheme wal

" Aides visuelles
set ruler
set showcmd
"set relativenumber
set number relativenumber

" Recherche incrémentale
set hlsearch
set incsearch
set ignorecase
set smartcase
if has ('nvim')
    set inccommand=nosplit
endif
nnoremap <esc> :noh<return><esc>

" Auto-indentation à 2 espaces
set autoindent
filetype plugin indent on

set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab

" Compléter avec <Tab> en mode commande
set wildmenu
set wildmode=longest,full

set clipboard+=unnamedplus
set t_Co=256
set encoding=utf8
set linespace=0

" Text Wraping
"set textwidth=79
set colorcolumn=80
set wrap

set scrolloff=5

" Lightline
set laststatus=2
set noshowmode

let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ }

"Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap gf :e <cfile><cr>
nnoremap <c-w> :sp <cfile><cr>
nnoremap g<CR> g<C-]>
nnoremap <C-]> g<C-]>

nnoremap <leader>p :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>t :Files<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>k :bdelete<CR>

" nnoremap <BS> <PageUp>
" nnoremap <Space> <PageDown>

let g:livepreview_previewer = 'zathura'

let g:deoplete#enable_at_startup=1

" Source fichiers de conf à la modification
augroup configurationFiles
  autocmd! BufWritePost init.vim      source %
  autocmd! BufWritePost Xresources    !xrdb -load ~/.Xresources
  autocmd! BufWritePost .Xresources   !xrdb -load ~/.Xresources
augroup END

