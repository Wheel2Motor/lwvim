vim9script

nmap <C-s> :w<CR>
imap <C-s> <ESC>:w<CR>

g:mapleader = ","
nnoremap <Leader>ls :split<CR>
nnoremap <Leader>lv :vsplit<CR>
nnoremap <Leader>le :LWExploreCurFile<CR>
nnoremap <Leader>lr :w<CR>:so %<CR>

cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
