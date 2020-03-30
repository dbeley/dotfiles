
"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

"Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-vinegar'

"Plug 'vim-syntastic/syntastic'
"Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/nerdcommenter'
"Plug 'Xuyuanp/nerdtree-git-plugin'

"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'

"Plug 'morhetz/gruvbox'
Plug 'dylanaraps/wal'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'

"Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'deoplete-plugins/deoplete-jedi'
"Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'easymotion/vim-easymotion'
"Plug 'terryma/vim-multiple-cursors'

Plug 'jalvesaq/Nvim-R'
Plug 'plasticboy/vim-markdown'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'lervag/vimtex'
"Plug 'vim-latex/vim-latex'
"Plug 'rhysd/vim-grammarous'

"Plug 'sheerun/vim-polyglot'
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'

Plug 'w0rp/ale'
"Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'ryanolsonx/vim-lsp-python'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'

"Plug 'jceb/vim-orgmode'
"Plug 'joshhartigan/vim-reddit'
"Plug 'itchyny/calendar.vim'

Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
"Plug 'neovimhaskell/haskell-vim'
"Plug 'tpope/vim-fireplace'
"Plug 'rust-lang/rust.vim'

Plug 'ryanoasis/vim-devicons'

Plug 'psf/black', { 'commit': 'ce14fa8b497bae2b50ec48b3bd7022573a59cdb1' }
"Plug 'metakirby5/codi.vim'
"Plug 'jpalardy/vim-slime'

call plug#end()

" Change Leader and LocalLeader keys:
let maplocalleader = ','
let mapleader = ';'

filetype plugin indent on
set autoindent

set backupdir=/tmp
set nocompatible

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
set number relativenumber

" Recherche incrémentale
" set hlsearch
set incsearch
set ignorecase
set smartcase

if has ('nvim')
    set inccommand=nosplit
endif

set tabstop=4
set shiftwidth=4
set softtabstop=0
set noexpandtab
set smarttab
set autoindent
set preserveindent
set copyindent
set fileformat=unix

set path+=**
set wildmenu
set wildmode=longest,full

set clipboard+=unnamedplus
set t_Co=256
set encoding=utf8
set linespace=0
set hidden

" Folding
set foldmethod=indent
set foldlevel=99

" Text Wraping
"set textwidth=79
set colorcolumn=80
set wrap
set scrolloff=5

" netrw
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3

"let NERDTreeIgnore = ['\.DAT$', '\.LOG1$', '\.LOG1$']
"autocmd vimenter * NERDTree
"map <C-n> :NERDTreeToggle<CR>

" ale
"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)
"let g:ale_list_window_size = 5
"let g:ale_echo_msg_error_str = 'E'
"let g:ale_echo_msg_warning_str = 'W'
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:ale_linters = {'python': ['bandit', 'flake8']}
"slower than python-black official plugin
"let g:ale_fixers = {'python': ['black']}
"let g:ale_fix_on_save = 1


"Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <esc> :noh<return><esc>
nnoremap gf :e <cfile><cr>
"nnoremap <c-w> :sp <cfile><cr>
nnoremap g<CR> g<C-]>
nnoremap <C-]> g<C-]>

"nnoremap <leader>p :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>t :Files<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>r :Rg<CR>
nnoremap <leader>c :Commands<CR>
nnoremap <leader>k :bdelete<CR>
nnoremap <leader>g :Goyo<CR>
nnoremap <leader>d :Codi<CR>
nnoremap <leader>x :Lines<CR>
nnoremap <leader>v :BLines<CR>
nnoremap <leader>w :w<CR>
inoremap <leader>w <C-c>:w<CR>
nmap <leader>l :TagbarToggle<CR>
nmap <F8> :TagbarToggle<CR>
" nnoremap <BS> <PageUp>
" nnoremap <Space> <PageDown>
nnoremap <leader>n :lnext<CR>
nnoremap <leader>p :lprev<CR>

let g:livepreview_previewer = 'zathura'
let python_hightlight_all=1
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'
let g:deoplete#enable_at_startup=1

" Source fichiers de conf à la modification
augroup configurationFiles
  autocmd! BufWritePost init.vim      source %
  autocmd! BufWritePost Xresources    !xrdb -load ~/.Xresources
  autocmd! BufWritePost .Xresources   !xrdb -load ~/.Xresources
augroup END

" Nvim-R
" R output is highlighted with current colorscheme
let g:rout_follow_colorscheme = 1

" R commands in R output are highlighted
let g:Rout_more_colors = 1

" Use Ctrl+Space to do omnicompletion:
if has('nvim') || has('gui_running')
    inoremap <C-Space> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
endif

" Press the space bar to send lines and selection to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

" Python
augroup blackFormatter
autocmd BufWritePre *.py execute ':Black'
augroup END
let g:black_linelength=79

augroup PythonStuff
autocmd FileType python setlocal completeopt-=preview
augroup END

" Haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2

" Vim-slime
let g:slime_target = "tmux"
let g:slime_python_ipython = 1
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}

" lsp
let g:lsp_signs_enabled = 1

"asyncomplete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Airline
"set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'

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


"highlight NonText ctermbg=none
"highlight Normal guibg=NONE ctermbg=NONE

"if exists("g:loaded_webdevicons")
"	call webdevicons#refresh()
"endif


" Vim-markdown preferences
let g:vim_markdown_folding_disabled = 1

"Vim-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Press \R to start rotating lines and <C-c> (Control+c) to stop.

function! s:RotateString(string)
    let split_string = split(a:string, '\zs')
    return join(split_string[-1:] + split_string[:-2], '')
endfunction

function! s:RotateLine(line, leading_whitespace, trailing_whitespace)
    return substitute(
        \ a:line,
        \ '^\(' . a:leading_whitespace . '\)\(.\{-}\)\(' . a:trailing_whitespace . '\)$',
        \ '\=submatch(1) . <SID>RotateString(submatch(2)) . submatch(3)',
        \ ''
    \ )
endfunction

function! s:RotateLines()
    let saved_view = winsaveview()
    let first_visible_line = line('w0')
    let last_visible_line = line('w$')
    let lines = getline(first_visible_line, last_visible_line)
    let leading_whitespace = map(
        \ range(len(lines)),
        \ 'matchstr(lines[v:val], ''^\s*'')'
    \ )
    let trailing_whitespace = map(
        \ range(len(lines)),
        \ 'matchstr(lines[v:val], ''\s*$'')'
    \ )
    try
        while 1 " <C-c> to exit
            let lines = map(
                \ range(len(lines)),
                \ '<SID>RotateLine(lines[v:val], leading_whitespace[v:val], trailing_whitespace[v:val])'
            \ )
            call setline(first_visible_line, lines)
            redraw
            sleep 50m
        endwhile
    finally
        if &modified
            silent undo
        endif
        call winrestview(saved_view)
    endtry
endfunction

nnoremap <silent> <Plug>(RotateLines) :<C-u>call <SID>RotateLines()<CR>

nmap \R <Plug>(RotateLines)
