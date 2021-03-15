syntax on
filetype plugin indent on

call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

Plug 'pgdouyon/vim-yin-yang'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

"Plug 'junegunn/fzf.vim'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'tpope/vim-fugitive'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'preservim/nerdtree'
call plug#end()

"""""GENERAL VIM REMAPS"""""
let mapleader = " "
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <Tab> :tabnext<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
cnoremap <expr> <space>  wildmenumode()?"<Down>":"\<space>"
"augroup remember_folds
"  autocmd!
"  autocmd FileType python,go,c,cpp,java BufWinLeave * mkview
"  autocmd FileType python,go,c,cpp,java BufWinEnter * silent! loadview
"augroup END
""""""""""""""""""""""""""""
source ~/.config/nvim/terminal.vim

