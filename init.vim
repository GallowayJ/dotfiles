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

call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins' }
Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


let g:deoplete#enable_at_startup = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'

" deoplete tab completion
inoremap <expr><tab> pumvisible()? "\<c-n>" : "\<tab>"

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
