" set color theme
let g:theme_scheme='gruvbox'
let g:theme_background='dark'

" set leader key, not <space>
let g:leader_key=','


" load configuration files
if filereadable(expand("~/.vim/general.vim"))
    exec "source " . expand("~/.vim/general.vim")
endif

if filereadable(expand("~/.vim/bundle.vim"))
    exec "source " . expand("~/.vim/bundle.vim")
endif

if filereadable(expand("~/.vim/theme.vim"))
    exec "source " . expand("~/.vim/theme.vim")
endif

if filereadable(expand("~/.vim/keymapping.vim"))
    exec "source " . expand("~/.vim/keymapping.vim")
endif
