" ======================================
"           theme configuration
" ======================================
let g:default_theme_scheme='gruvbox'
let g:default_theme_background='dark'

if isdirectory(expand("~/.vim/bundles/gruvbox"))
    let g:gruvbox_termcolors=256
    let g:gruvbox_italic=1
    let g:gruvbox_contrast_dark='medium'
    let g:gruvbox_contrast_light='medium'
    let g:gruvbox_invert_selection=0
endif

if isdirectory(expand("~/.vim/bundles/vim-airline"))
    if exists('g:theme_airline')
        let g:airline_theme=g:theme_airline
    elseif exists('g:theme_scheme')
        let g:airline_theme=g:theme_scheme
    else
        let g:airline_theme=g:default_theme_scheme
    endif
endif

if exists('g:theme_background')
    exec 'set background=' . g:theme_background
else
    exec 'set background=' . g:default_theme_background
endif

if exists('g:theme_scheme')
    exec 'colorscheme ' . g:theme_scheme
else
    exec 'colorscheme ' . g:default_theme_scheme
endif

