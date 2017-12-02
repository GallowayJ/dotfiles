syntax on "enable syntax highlighting
filetype plugin indent on " load plugins according to detected filetype

set expandtab
set showmode " show current mode in command line
set showcmd " show already typed keys when more are expected
set wrapscan " search wrap around end of file
set ignorecase " make search case insensitve
set smartcase " unless a capital is used in query
set ruler
set number " show line numbers
"set termguicolors " enable true colour support

call plug#begin('~/.local/share/nvim/plugged')
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/python-support.nvim'
Plug 'scrooloose/nerdtree'
Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'

call plug#end()


let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'

" smart tab for auto complete
inoremap <expr> <silent> <Tab> pumvisible()?"\<C-n>":"\<TAB>"
inoremap <expr> <silent> <S-TAB> pumvisible()?"\<C-p>":"\<S-TAB>"
" For relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
     set nornu
     set number
  else
     set rnu
  endif
endfunc

" Toggle between normal and relative numbering
let mapleader="\<SPACE>"
nnoremap <leader>r :call NumberToggle()<CR>


set backup
set backupext =-vimbackup
set backupskip =
set updatecount =100
set undofile
set viminfo ='100,n$HOME/.config/files/info/neoviminfo
