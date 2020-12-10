" for vim 7
set t_Co=256

" for vim 8
if (has("termguicolors"))
set termguicolors
endif

" vimplug
call plug#begin()
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'andymass/vim-matchup'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' "-------------------------------------------- fzf in vim
call plug#end()

" Theme
syntax on
colorscheme purify
let g:airline_theme='purify'

" font
set guifont=DroidSansMono\ Nerd\ Font\ 14

" enable linenumber
set number

"----nerdtree-----
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"toggle nerdtree ctrl+n
map <C-n> :NERDTreeToggle<CR>


