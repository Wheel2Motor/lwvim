" ******************************************************************************
" ******************************************************************************
"
"                           Share Plug Settings
"
" ******************************************************************************
" ******************************************************************************


" ------------------------------------------------------------------------------
" vim-smooth_scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll*2, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll*2, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>


" ------------------------------------------------------------------------------
" rainbow
" Set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_active = 1


" ------------------------------------------------------------------------------
" onedark
colorscheme onedark
let g:airline_theme='onedark'


" ------------------------------------------------------------------------------
" vim-nerdtree-sync
" 同步NERDTree到当前编辑文件
let g:nerdtree_sync_cursorline = 1
let g:NERDTreeHighlightCursorline = 1


" ------------------------------------------------------------------------------
" fzf
nmap <C-P> :FZF
imap <C-P> <ESC>:FZF
