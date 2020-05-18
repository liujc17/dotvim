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
"          Move Cursor/Search
" ======================================
nnoremap U <C-u>
nnoremap M <C-d>
if isdirectory(expand("~/.vim/bundles/vim-easymotion"))
    map  / <Plug>(easymotion-sn)
    omap / <Plug>(easymotion-tn)
    map  n <Plug>(easymotion-next)
    map  N <Plug>(easymotion-prev)
    nmap s <Plug>(easymotion-bd-f2)
endif
" ======================================
"         Files, Buffers, Windows
" ======================================
nnoremap <silent> <space>qq :quitall<CR>
nnoremap <silent> <space>wd <C-w>c
nnoremap <silent> <space>fd :bdelete<CR>
nnoremap <silent> <space>fs :w<CR>
if isdirectory(expand("~/.config/coc/extensions/node_modules/coc-lists"))
    nnoremap ff :CocList files<CR>
endif
if isdirectory(expand("~/.vim/bundles/vim-airline"))
    nmap H <Plug>AirlineSelectPrevTab
    nmap L <Plug>AirlineSelectNextTab
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
nnoremap <silent> <leader>1 :call <SID>goto_win_by_number(1)<CR>
nnoremap <silent> <leader>2 :call <SID>goto_win_by_number(2)<CR>
nnoremap <silent> <leader>3 :call <SID>goto_win_by_number(3)<CR>
nnoremap <silent> <leader>4 :call <SID>goto_win_by_number(4)<CR>
nnoremap <silent> <leader>5 :call <SID>goto_win_by_number(5)<CR>
nnoremap <silent> <leader>6 :call <SID>goto_win_by_number(6)<CR>
nnoremap <silent> <leader>7 :call <SID>goto_win_by_number(7)<CR>
nnoremap <silent> <leader>8 :call <SID>goto_win_by_number(8)<CR>
nnoremap <silent> <leader>9 :call <SID>goto_win_by_number(9)<CR>
function! s:goto_win_by_number(winumber)
    call win_gotoid(win_getid(a:winumber, tabpagenr()))
endfunction
" ======================================
"               Coc(List)
" ======================================
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
    nnoremap <silent> <space>fb :Format<CR>
    nnoremap <silent> <space>cc :CocConfig<CR>
    nnoremap <silent> <space>le :<C-u>CocList extensions<cr>
    nnoremap <silent> <space>ld :<C-u>CocList diagnostics<CR>
    nnoremap <silent> <space>lc :<C-u>CocList commands<cr>
endif
" ======================================
"              Navigation
" ======================================
if isdirectory(expand("~/.vim/bundles/coc.nvim"))
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gn <Plug>(coc-diagnostic-next)
    nmap <silent> gp <Plug>(coc-diagnostic-prev)
    nmap <silent> gr <Plug>(coc-references)
    nmap <silent> gy <Plug>(coc-type-definition)
endif
" ======================================
"                  Git
" ======================================
if isdirectory(expand("~/.vim/bundles/vim-fugitive"))
    nnoremap <silent> <space>gb :Git blame<CR>
    nnoremap <silent> <space>gc :Git commit<CR>
    nnoremap <silent> <space>gr :GRename<CR>
    nnoremap <silent> <space>gl :Gclog<CR>
    nnoremap <silent> <space>gp :Git push<CR>
    nnoremap <silent> <space>gs :Git<CR>
endif
if isdirectory(expand("~/.vim/bundles/vim-signify"))
    nnoremap <space>gd :SignifyDiff<cr>
    nmap <space>gj <plug>(signify-next-hunk)
    nmap <space>gk <plug>(signify-prev-hunk)
    " nnoremap gh :SignifyHunkDiff<cr>
    " nnoremap gu :SignifyHunkUndo<cr>
    " hunk text object
    omap ic <plug>(signify-motion-inner-pending)
    xmap ic <plug>(signify-motion-inner-visual)
    omap ac <plug>(signify-motion-outer-pending)
    xmap ac <plug>(signify-motion-outer-visual)
endif
" ======================================
"               Markdown
" ======================================
if isdirectory(expand("~/.vim/bundles/vim-markdown"))
    autocmd filetype markdown nnoremap <silent> <buffer> <leader>f :TableFormat<CR>
    autocmd filetype markdown nnoremap <silent> <buffer> <leader>t :Toc<CR>
endif
if isdirectory(expand("~/.vim/bundles/markdown-preview.nvim"))
    autocmd filetype markdown nmap <buffer> <leader>p <Plug>MarkdownPreviewToggle
endif
" ======================================
"                Python
" ======================================
if isdirectory(expand("~/.config/coc/extensions/node_modules/coc-python"))
    autocmd filetype python nnoremap <buffer> <space>r :CocCommand python.execInTerminal<CR>
    autocmd filetype python nnoremap <buffer> <leader>i :CocCommand python.sortImports<CR>
endif
