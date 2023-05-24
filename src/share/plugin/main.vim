" ******************************************************************************
" ******************************************************************************
"
"                           VIM Plug
"
" ******************************************************************************
" ******************************************************************************


" Auto install Vim-Plug
function LWF_InitVimPlug()
	" Windows
	if has('windows')
		if !filereadable(expand('~/vimfiles/autoload/plug.vim'))
			let l:command = '\"iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni $HOME/vimfiles/autoload/plug.vim -Force\"'
			execute('!powershell -noprofile -command ' . l:command)
		endif
	" Unix-Like
	else
		if !filereadable(expand('~/.vim/autoload/plug.vim'))
			let l:command = 'curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
			execute('!' . l:command)
		endif
	endif
endfunction
call LWF_InitVimPlug()


call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" " Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }


" ------------------------------------------------------------------------------
" nerdtree
" 树状文件目录
Plug 'preservim/nerdtree'


" ------------------------------------------------------------------------------
" vim-nerdtree-sync
" 同步NERDTree到当前编辑文件
Plug 'unkiwii/vim-nerdtree-sync'


" ------------------------------------------------------------------------------
" nerdtree-git-plugin
" 树状文件目录Git插件
Plug 'xuyuanp/nerdtree-git-plugin'


" ------------------------------------------------------------------------------
" nerdcommenter
" <Leader>cc 注释
" <Leader>u  取消注释
Plug 'scrooloose/nerdcommenter'


" ------------------------------------------------------------------------------
" Commentary
" gcgc切换注释
Plug 'tpope/vim-commentary'


" ------------------------------------------------------------------------------
" Tagbar
" 显示代码标签结构
Plug 'majutsushi/tagbar'


" ------------------------------------------------------------------------------
" vim-airline
" Airline状态栏主题
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" ------------------------------------------------------------------------------
" ctrlp
" 模糊查找
Plug 'kien/ctrlp.vim'


" ------------------------------------------------------------------------------
" fzf
" 并行化模糊查找
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }


" ------------------------------------------------------------------------------
" vim-highlighter
" 单词高亮
" f<CR>   新增高亮
" f<BS>   删除高亮
" f<C-L>  清除高亮
" f<C-Tag>查找高亮
Plug 'azabiong/vim-highlighter'


" ------------------------------------------------------------------------------
" vim-smooth-scroll
" 平滑滚动
Plug 'terryma/vim-smooth-scroll'


" ------------------------------------------------------------------------------
" rainbow
" 彩虹括号
Plug 'luochen1990/rainbow'


" ------------------------------------------------------------------------------
" ctags
Plug 'universal-ctags/ctags'


" ------------------------------------------------------------------------------
" gitgutter
" 显示Git修改内容
" 有个替代品：signify
" Plug 'airblade/vim-gitgutter'


" ------------------------------------------------------------------------------
" fugitive
" 显示Git修改内容
Plug 'tpope/vim-fugitive'


" ------------------------------------------------------------------------------
" onedark
" onedark深色主题
Plug 'joshdick/onedark.vim'


" ------------------------------------------------------------------------------
" vim-startify
" 开始界面显示Recent
Plug 'mhinz/vim-startify'


" ------------------------------------------------------------------------------
" vim-signify
" 显示Git和SVN修改过的文件
Plug 'mhinz/vim-signify', { 'branch': 'legacy' }


" ------------------------------------------------------------------------------
" vim-git
" 显示Git commit日志的高亮
Plug 'tpope/vim-git'


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting



" ------------------------------------------------------------------------------
" Plugin settings
" vim-airline
let g:airline_theme='alduin'


" ------------------------------------------------------------------------------
" Plugin settings
" vim-smooth_scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll*2, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll*2, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>


" ------------------------------------------------------------------------------
" Plugin settings
" rainbow
" Set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_active = 1


" ------------------------------------------------------------------------------
" Plugin settings
" onedark
colorscheme onedark
let g:airline_theme='onedark'


" ------------------------------------------------------------------------------
" Plugin settings
" vim-nerdtree-sync
" 同步NERDTree到当前编辑文件
let g:nerdtree_sync_cursorline = 1
let g:NERDTreeHighlightCursorline = 1
