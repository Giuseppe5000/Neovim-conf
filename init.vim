" Plugins
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'xiyaowong/nvim-cursorword'
Plug 'neoclide/coc.nvim', {'branch': 'release'}   " Language server and coc extension required
Plug 'wfxr/minimap.vim'														" code-minimap required
Plug 'ryanoasis/vim-devicons'											" nerd-fonts required
Plug 'joshdick/onedark.vim'

call plug#end()

set number

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

" Set working dir
set autochdir

" Airline
let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = 1

" Minimap
let g:minimap_width = 8
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_highlight_search = 1
let g:minimap_git_colors = 1

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-css', 'coc-eslint']

" Terminal mode exit map
tnoremap <Esc> <C-\><C-n>

" CoC <tab> completion
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"

" Cursor highlight
hi default CursorWord cterm=underline gui=underline

" Start terminal
autocmd VimEnter * ++nested bel split term://bash | 20winc - | wincmd k
autocmd TermOpen * setlocal nonumber norelativenumber

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
