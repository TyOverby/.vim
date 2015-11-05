" Vundle

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Highly Recommended
Plugin 'tpope/vim-sensible'             " Good default vim settings
Plugin 'tpope/vim-fugitive'             " Git commands
Plugin 'gmarik/vundle'                  " Package Manager
Plugin 'scrooloose/syntastic'           " Syntax checker
Plugin 'kien/ctrlp.vim'                 " Fuzzy file search
Plugin 'scrooloose/nerdtree'            " File tree
Plugin 'jistr/vim-nerdtree-tabs'        " Better extension NerdTree
Plugin 'Xuyuanp/nerdtree-git-plugin'    " Git symbols inside NerdTree
Plugin 'airblade/vim-gitgutter'         " Git symbols in the gutter
Plugin 'szw/vim-ctrlspace'              " Workspace Manager
Plugin 'Raimondi/delimitMate'           " Automatic delimeter insertion
Plugin 'ervandew/supertab'              " Tab completion!
Plugin 'itchyny/lightline.vim'          " Nicer status line
Plugin '907th/vim-auto-save'            " Automatically saves files after edits
Plugin 'rking/ag.vim'                   " Integration for the ag file searcher
Plugin 'thirtythreeforty/lessspace.vim' " Remove trailing whitespace

" Language specific
Plugin 'plasticboy/vim-markdown'    " Markdown
Plugin 'wting/rust.vim'             " Rust
Plugin 'othree/html5.vim'           " Html 5
Plugin 'leafgarland/typescript-vim' " Typescript

" colors (graveyard)
" Plugin 'jonathanfilip/vim-lucius'
" Plugin 'chriskempson/base16-vim'
" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-colorscheme-switcher'
" Plugin 'yamafaktory/lumberjack.vim'
" Plugin 'vyshane/vydark-vim-color'
" Plugin 'carlson-erik/wolfpack'
" Plugin 'ajh17/Spacegray.vim'
" Plugin 'vim-scripts/strange'
" Plugin 'adlawson/vim-sorcerer'
" Plugin 'jeetsukumaran/vim-nefertiti'
" Plugin 'junegunn/seoul256.vim'
Plugin 'morhetz/gruvbox'

filetype plugin indent on

" Misc editor features

set autoindent
set ruler
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set showcmd
set showmatch
set ignorecase
set incsearch
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
let NERDTreeMapHelp='<f1>' " Release the usage of ? for backwards searching
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeCascadeOpenSingleChildDir = 1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "@",
    \ "Renamed"   : "-",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "x",
    \ "Dirty"     : "-",
    \ "Clean"     : "",
    \ "Unknown"   : "?"
    \ }

" Tabs
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on

"smart indent when entering insert mode with i on empty lines
function! IndentWithI()
    if len(getline('.')) == 0
        return "\"_ddO"
    else
        return "i"
    endif
endfunction
"nnoremap <expr> i IndentWithI()

" Theme
let g:gruvbox_bold = 0
let g:gruvbox_italic = 0
let g:gruvbox_underline = 0
let g:gruvbox_undercurl = 0
let g:gruvbox_contrast_dark = "soft"
let g:gruvbox_contrast_light = "soft"

let g:lightline = { 'colorscheme': 'wombat', }

colo gruvbox
syntax enable
set t_Co=256
autocmd BufRead,BufNewFile * nested colorscheme gruvbox

set fillchars=

" Delimitmate
let g:delimitMate_backspace = 2
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1

" Disable shit highlighting
set nohlsearch
let g:loaded_matchparen=1

" Limelight
let g:limelight_conceal_ctermfg = 'gray'

" Autocomplete
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set completeopt=longest,menuone,preview
noremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" don't make .swp or .swo files
set nobackup

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme="hybrid"

" Ctrl-Space
set hidden

" Ctrl-P
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']

" Auto Save
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_in_insert_mode = 0

" Weird windows workarounds
if has("win32") || has("win16")
    set shell=cmd
    set shellcmdflag=/c
endif

" Syntastic
let g:syntastic_disabled_filetypes=['typescript']
let g:syntastic_always_populate_loc_list = 1

" Disable backups and swapfiles
set nobackup
set noswapfile

" Automatically reload the file if it has been changed outside of vim.
set autoread

" Git Gutter
" We save the buffer on every insert anyway
" so this is still pretty realtime
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_sign_column_always = 1

