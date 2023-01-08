" Plugins
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'itchyny/vim-cursorword'
Plug 'neoclide/coc.nvim', {'branch': 'release'}   " Language server and coc extension required
Plug 'ryanoasis/vim-devicons'											" nerd-fonts required
Plug 'joshdick/onedark.vim'

call plug#end()

" Generic
set number
set cursorline
set clipboard+=unnamedplus " wl-clipboard or xclip required
aunmenu PopUp.How-to\ disable\ mouse
aunmenu PopUp.-1-

" Colorscheme
syntax on
set termguicolors
colorscheme onedark

" Font
set encoding=UTF-8
set guifont=DejaVu\ Sans\ Mono:h10

" Tabs
set tabstop=2
set shiftwidth=2

" Working dir
set autochdir

" Terminal
tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * setlocal nonumber norelativenumber 

" Airline
let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0

" CoC
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-css', 'coc-eslint']
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
nnoremap <C-t> :NERDTreeToggle<CR>
