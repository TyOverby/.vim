" Vundle

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/Align'

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
au InsertEnter * :set nu
au InsertLeave * :set rnu
set rnu
autocmd BufRead,BufNewFile * setlocal nospell
set viminfo=


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

autocmd BufRead,BufNewFile * colorscheme lucius
autocmd BufRead,BufNewFile * syntax enable
autocmd BufRead,BufNewFile * LuciusDark
