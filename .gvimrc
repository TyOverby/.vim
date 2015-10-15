set background=dark
" Remove all toolbars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
" Disable mouse
"
set mouse=c

if has("win32") || has("win16")
    set guifont=Consolas:h12:cANSI
else
    let os = substitute(system('uname'), "\n", "", "")
    if os == "Linux"
        set guifont=Consolas\ for\ Powerline\ 12
    else
        set guifont=Consolas:h12:cANSI
    endif
endif


set linespace=0
set guiheadroom=0
