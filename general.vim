" ======================================
"            General Settings
" ======================================
set nocompatible
set encoding=utf-8
set noshowmode
set showcmd
set showmatch
set cursorline
set ruler
set number
set laststatus=2
set backspace=indent,eol,start
set autowrite
set autoread
set hlsearch
set incsearch
set ignorecase
set smartcase
set wildmenu
" set wildmode=list:longest,full
set wildignorecase
set list
set listchars=tab:›\ ,trail:•,nbsp:.
set wrap
set autoindent
set smartindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set nojoinspaces
set splitright
set splitbelow
set signcolumn=yes
set hidden
set nobackup
set nowritebackup
set conceallevel=2
set updatetime=300
" set cmdheight=2

highlight clear SignColumn
highlight clear LineNr
" Write the file really when you forget to sudo
cmap w!! w !sudo tee % >/dev/null
nnoremap Y y$
" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv
" Allow using the repeat operator with a visual selection
vnoremap . :normal .<CR>
" swich to normal mode from insert mode by jj
inoremap jj <ESC><ESC>
if has('clipboard')
    " When possible use + register for copy-paste
    if has('unnamedplus')
        set clipboard=unnamed,unnamedplus
    " On mac and Windows, use * register for copy-paste
    else
        set clipboard=unnamed
    endif
endif
