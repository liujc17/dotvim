" ======================================
"           theme configuration
" ======================================
if exists('g:theme_scheme')
    let g:color_scheme=g:theme_scheme
else
    let g:color_scheme='one'
endif

if exists('g:theme_background')
    let g:color_backgroud=g:theme_background
else
    let g:color_backgroud='light'
endif

if g:color_scheme == 'gruvbox'
    if isdirectory(expand("~/.vim/bundles/gruvbox"))
        let g:gruvbox_termcolors=256
        let g:gruvbox_italic=1
        let g:gruvbox_contrast_dark='medium'
        let g:gruvbox_contrast_light='medium'
        let g:gruvbox_invert_selection=1
    endif
endif

if g:color_scheme == 'one'
    if isdirectory(expand("~/.vim/bundles/vim-one"))
        set t_Co=256
        set termguicolors
        let g:one_allow_italics = 1
    endif
endif

if g:color_scheme == 'onehalf'
    if isdirectory(expand("~/.vim/bundles/onehalf"))
        set t_Co=256
        let g:color_scheme='onehalf' . g:color_backgroud
    endif
endif

" the name of airline theme is the one of color scheme
if isdirectory(expand("~/.vim/bundles/vim-airline"))
    let g:airline_theme=g:color_scheme
endif

exec 'set background=' . g:color_backgroud
exec 'colorscheme ' . g:color_scheme
