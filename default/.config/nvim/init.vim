filetype plugin on

"""""""""'""
" Vim-Plug "
""""""""""'"

call plug#begin('~/.config/nvim/plugged')

" Statusbar bling
Plug 'bling/vim-airline'

" Colorschemes
Plug 'morhetz/gruvbox'

" File Management
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Git Plugins
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Syntax completion/checking
Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'majutsushi/tagbar'

" Language specific
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'

call plug#end()

""""""""""""""
" Vim Config "
""""""""""""""

" show relative line numbers above and below absolute line number
set rnu
set nu

" tab configuration (?)
set shiftwidth=4
set tabstop=4

" show tabs
set list

" colorscheme/appearance
colors gruvbox
set background=dark

" gruvbox options
let g:gruvbox_italic=1


" bling/vim-airline options
let g:airline_powerline_fonts = 1

" scrooloose/nerdtree options
map <C-n> :NERDTreeToggle<CR>

" junegunn/fzf options
map <C-p> :FZF<CR>

" rust-lang/rust.vim options
let g:rustfmt_autosave = 1

" Shougo/deoplete.nvim options
let g:deoplete#enable_at_startup = 1
