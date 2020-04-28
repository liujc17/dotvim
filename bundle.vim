" ======================================
"           Preferable plugins
" ======================================
call plug#begin('~/.vim/bundles')

Plug 'junegunn/vim-plug'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-signify'
" Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'morhetz/gruvbox'
" Plug 'vim-airline/vim-airline-themes'

call plug#end()
" ======================================
"             vim-polyglot
" ======================================
" if isdirectory(expand("~/.vim/bundles/vim-polyglot"))
"     let g:polyglot_disabled = ['css']
" endif
" ======================================
"             vim-airline
" ======================================
if isdirectory(expand("~/.vim/bundles/vim-airline"))
    function! WindowNumber(...)
        let builder = a:1
        let context = a:2
        call builder.add_section('airline_b', ' %{tabpagewinnr(tabpagenr())} ')
        return 0
    endfunction
    call airline#add_statusline_func('WindowNumber')
    call airline#add_inactive_statusline_func('WindowNumber')
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'default'
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline#extensions#tabline#left_alt_sep = ''
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline_powerline_fonts = 1
    " powerline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.maxlinenr = ' '
endif
" ======================================
"             vim-easymotion
" ======================================
if isdirectory(expand("~/.vim/bundles/vim-easymotion"))
    let g:EasyMotion_smartcase = 1
endif
" ======================================
"             nerdcommenter
" ======================================
if isdirectory(expand("~/.vim/bundles/nerdcommenter"))
    let g:NERDSpaceDelims = 1
    let g:NERDCompactSexyComs = 1
    let g:NERDDefaultAlign = 'left'
    " let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
    let g:NERDCommentEmptyLines = 1
    let g:NERDTrimTrailingWhitespace = 1
endif
" ======================================
"          vim-multiple--cursors
" ======================================
if isdirectory(expand("~/.vim/bundles/vim-multiple-cursors"))
    let g:multi_cursor_use_default_mapping=0
    let g:multi_cursor_start_word_key      = '<C-n>'
    let g:multi_cursor_select_all_word_key = '<C-a>'
    let g:multi_cursor_start_key           = 'g<C-n>'
    let g:multi_cursor_select_all_key      = 'g<C-a>'
    let g:multi_cursor_next_key            = '<C-n>'
    let g:multi_cursor_prev_key            = '<C-p>'
    let g:multi_cursor_skip_key            = '<C-x>'
    let g:multi_cursor_quit_key            = '<Esc>'
endif
" ======================================
"               coc.nvim
" ======================================
if isdirectory(expand("~/.vim/bundles/coc.nvim"))
    " Don't pass messages to |ins-completion-menu|.
    set shortmess+=c
    " Add `:Format` command to format current buffer.
    command! -nargs=0 Format :call CocAction('format')
    " Add `:Fold` command to fold current buffer.
    command! -nargs=? Fold :call CocAction('fold', <f-args>)
    " Add `:OR` command for organize imports of the current buffer.
    command! -nargs=0 OR :call CocAction('runCommand',
            \ 'editor.action.organizeImport')
    " Highlight the symbol and its references when holding the cursor.
    autocmd CursorHold * silent call CocActionAsync('highlight')
    " Use tab for trigger completion with characters ahead and navigate.
    " NOTE: Use command ':verbose imap <tab>' to make sure tab is not
    " mapped by other plugin before putting this into your config.
    inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction
    " Use <cr> to confirm completion, `<C-g>u` means break undo chain
    " at current position.
    if exists('*complete_info')
        inoremap <expr> <cr> complete_info()["selected"] != "-1"
                \ ? "\<C-y>" : "\<C-g>u\<CR>"
    else
        imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"
    endif
endif
" ======================================
"             coc-snippets
" ======================================
if isdirectory(expand("~/.config/coc/extensions/node_modules/coc-snippets"))
    inoremap <silent><expr> <TAB>
            \ pumvisible() ? coc#_select_confirm() :
            \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction
    let g:coc_snippet_next='<tab>'
endif
" ======================================
"             vim-markdown
" ======================================
if isdirectory(expand("~/.vim/bundles/vim-markdown"))
    let g:vim_markdown_folding_disabled = 1
    let g:vim_markdown_folding_level = 3
    let g:tex_conceal = ""
    let g:vim_markdown_math = 1
    let g:vim_markdown_toc_autofit = 1
    let g:vim_markdown_strikethrough = 1
    let g:vim_markdown_no_extensions_in_markdown = 1
    let g:vim_markdown_edit_url_in = 'vsplit'
endif
" ======================================
"           markdown-preview
" ======================================
if isdirectory(expand("~/.vim/bundles/markdown-preview.nvim"))
    let g:mkdp_auto_start = 1
endif
