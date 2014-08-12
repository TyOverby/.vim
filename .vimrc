" Vundle

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Highly Recommended
Plugin 'tpope/vim-sensible'        " Good default vim settings
Plugin 'gmarik/vundle'             " Package Manager
Plugin 'jonathanfilip/vim-lucius'  " Dark Theme
Plugin 'scrooloose/syntastic'      " Syntax checker
Plugin 'vim-scripts/Align'         " Text alignment command
Plugin 'kien/ctrlp.vim'            " Fuzzy file search
Plugin 'scrooloose/nerdtree'       " File tree
Plugin 'jistr/vim-nerdtree-tabs'   " Better extension NerdTree
Plugin 'szw/vim-ctrlspace'         " Workspace Manager

" Language specific
Plugin 'derekwyatt/vim-scala'      " Scala
Plugin 'plasticboy/vim-markdown'   " Markdown
Plugin 'digitaltoad/vim-jade'      " Jade
Plugin 'wting/rust.vim'            " Rust
Plugin 'dart-lang/dart-vim-plugin' " Dart
Plugin 'othree/html5.vim'          " Html 5
let g:syntastic_dart_checkers=['']

" Optional
" Plugin 'fholgado/minibufexpl.vim'

filetype plugin indent on


" Misc editor features

set autoindent
set nobackup
set ruler
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set showcmd
set showmatch
set ignorecase
set incsearch
set autowrite
set ttimeout
set ttimeoutlen=0


" Misc preferences
nnoremap ; :
nnoremap Y y$
au InsertEnter * :set nornu| set nu
au InsertLeave * :set rnu
set rnu
autocmd BufRead,BufNewFile * setlocal nospell
set viminfo=


" NERDTree options
map <Tab> :NERDTreeTabsToggle<CR>
let NERDTreeMinimalUI=1

" Tabs
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on


" Remove trailing whitespace on save

function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line('.')
  let c = col('.')
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
filetype plugin on
autocmd BufWritePre * call <SID>StripTrailingWhitespaces()


" Theme
set t_co=256
colorscheme lucius

autocmd BufRead,BufNewFile * colorscheme lucius
autocmd BufRead,BufNewFile * syntax enable
autocmd BufRead,BufNewFile * LuciusDark

set fillchars+=vert:_

set cc=81
