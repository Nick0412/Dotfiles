set tabstop=4
set softtabstop=4
set nobackup
set autoread
set expandtab
set number
set backspace=indent,eol,start
set cursorline
set showmatch
set incsearch
set hlsearch
set ignorecase
set mouse=a
"set mouse=v
set scrolloff=10
set background=dark
set noerrorbells
set wrap
set shiftwidth=4
set autoindent
set wildmode=longest,list

call plug#begin("~/.vim/plugged")
    Plug 'vim-airline/vim-airline'
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'prabirshrestha/vim-lsp'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    Plug 'mhinz/vim-startify'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'liuchengxu/vim-which-key'
call plug#end()

"autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
let NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

:tnoremap <Esc> <C-\><C-n>

syntax on
set t_Co=256
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

source $HOME/.config/nvim/coc_lsp.vim
