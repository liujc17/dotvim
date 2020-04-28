" ======================================
"              Keybindings
" ======================================
if !exists('g:leader_key')
    let mapleader=','
else
    let mapleader=g:leader_key
endif

if !exists('g:localleader_key')
    let maplocalleader='_'
else
    let maplocalleader=g:localleader_key
endif
" ======================================
"                normal
" ======================================
nnoremap U <C-u>
nnoremap M <C-d>

if isdirectory(expand("~/.vim/bundles/vim-airline"))
    nmap H <Plug>AirlineSelectPrevTab
    nmap L <Plug>AirlineSelectNextTab
endif

if isdirectory(expand("~/.vim/bundles/vim-easymotion"))
    map  / <Plug>(easymotion-sn)
    omap / <Plug>(easymotion-tn)
    map  n <Plug>(easymotion-next)
    map  N <Plug>(easymotion-prev)
    nmap s <Plug>(easymotion-bd-f2)
endif

if isdirectory(expand("~/.vim/bundles/coc.nvim"))
    " Use K to show documentation in preview window.
    nnoremap <silent> K :call <SID>show_documentation()<CR>
    function! s:show_documentation()
        if (index(['vim','help'], &filetype) >= 0)
            execute 'h '.expand('<cword>')
        else
            call CocAction('doHover')
        endif
    endfunction
    " Use <c-space> to trigger completion.
    inoremap <silent><expr> <c-space> coc#refresh()
endif
" ======================================
"            prefix <space>
" ======================================
if isdirectory(expand("~/.config/coc/extensions/node_modules/coc-explorer"))
     nmap <space>e :CocCommand explorer<CR>
endif

nnoremap <space>c <C-w>c
nnoremap <space>d :bdelete<CR>
nnoremap <space>q :quitall<CR>
nnoremap <space>w :w<CR>

if isdirectory(expand("~/.config/coc/extensions/node_modules/coc-lists"))
    nnoremap <silent> <space>i :<C-u>CocList diagnostics<CR>
endif

if isdirectory(expand("~/.vim/bundles/coc.nvim"))
    nmap <space>j :CocConfig<CR>
    nmap <space>x :CocCommand<CR>
endif

if isdirectory(expand("~/.config/coc/extensions/node_modules/coc-python"))
    nmap <space>r :CocCommand python.execInTerminal<CR>
endif

if isdirectory(expand("~/.vim/bundles/vim-airline"))
    nmap <space>1 <Plug>AirlineSelectTab1
    nmap <space>2 <Plug>AirlineSelectTab2
    nmap <space>3 <Plug>AirlineSelectTab3
    nmap <space>4 <Plug>AirlineSelectTab4
    nmap <space>5 <Plug>AirlineSelectTab5
    nmap <space>6 <Plug>AirlineSelectTab6
    nmap <space>7 <Plug>AirlineSelectTab7
    nmap <space>8 <Plug>AirlineSelectTab8
    nmap <space>9 <Plug>AirlineSelectTab9
endif
" ======================================
"            prefix f,g
" ======================================
if isdirectory(expand("~/.vim/bundles/vim-markdown"))
    nmap ft :TableFormat<CR>
endif

if isdirectory(expand("~/.vim/bundles/coc.nvim"))
    nmap fb :Format<CR>
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gn <Plug>(coc-diagnostic-next)
    nmap <silent> gp <Plug>(coc-diagnostic-prev)
    nmap <silent> gr <Plug>(coc-references)
    nmap <silent> gy <Plug>(coc-type-definition)
endif

if isdirectory(expand("~/.vim/bundles/vim-fugitive"))
    nnoremap <silent> gb :Git blame<CR>
    nnoremap <silent> gc :Git commit<CR>
    nnoremap <silent> gm :GRename<CR>
    nnoremap <silent> gl :Gclog<CR>
    nnoremap <silent> gu :Git push<CR>
    nnoremap <silent> gs :Git<CR>
    " nnoremap <silent> gx :Git add -p %<CR>
    " nnoremap <silent> <leader>gf :Gdiffsplit<CR>
    " nnoremap <silent> <leader>gr :Gread<CR>
    " nnoremap <silent> <leader>gw :Gwrite<CR>
    " nnoremap <silent> <leader>ge :Gedit<CR>
endif

if isdirectory(expand("~/.vim/bundles/vim-signify"))
    nnoremap gf :SignifyDiff<cr>
    nmap gj <plug>(signify-next-hunk)
    nmap gk <plug>(signify-prev-hunk)
    " nnoremap gh :SignifyHunkDiff<cr>
    " nnoremap gu :SignifyHunkUndo<cr>
    " hunk text object
    omap ic <plug>(signify-motion-inner-pending)
    xmap ic <plug>(signify-motion-inner-visual)
    omap ac <plug>(signify-motion-outer-pending)
    xmap ac <plug>(signify-motion-outer-visual)
endif
" ======================================
"            prefix <leader>
" ======================================
if isdirectory(expand("~/.vim/bundles/vim-markdown"))
    nmap <leader>t :Toc<CR>
endif

nnoremap <leader>1 :call win_gotoid(win_getid(1, tabpagenr()))<CR>
nnoremap <leader>2 :call win_gotoid(win_getid(2, tabpagenr()))<CR>
nnoremap <leader>3 :call win_gotoid(win_getid(3, tabpagenr()))<CR>
nnoremap <leader>4 :call win_gotoid(win_getid(4, tabpagenr()))<CR>
nnoremap <leader>5 :call win_gotoid(win_getid(5, tabpagenr()))<CR>
nnoremap <leader>6 :call win_gotoid(win_getid(6, tabpagenr()))<CR>
nnoremap <leader>7 :call win_gotoid(win_getid(7, tabpagenr()))<CR>
nnoremap <leader>8 :call win_gotoid(win_getid(8, tabpagenr()))<CR>
nnoremap <leader>9 :call win_gotoid(win_getid(9, tabpagenr()))<CR>
