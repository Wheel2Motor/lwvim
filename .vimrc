" ******************************************************************************
"                           LW VIM
"     A lightweight VIM configuration with no plugin for fast and easy editing.
" ******************************************************************************



" ==============================================================================
"                           Language and Encoding
" ==============================================================================
let $LANG = 'en_US'
set langmenu=en_US
set encoding=utf-8


" ==============================================================================
"                           Default VIMRC
" ==============================================================================
" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim


" ==============================================================================
"                           Elementary Settings
" ==============================================================================
" 显示行号
set nu
" 不折行
set nowrap
" 高亮搜索
set hls
" 显示行、列号
set ruler
" 设置字体、字号
try
  set guifont=Cascadia_Code:h14:bi:cANSI:qDRAFT
catch
  try
    set guifont=Lucida_Console:h14:cANSI:qDRAFT
  catch
    set guifont=
  endtry
endtry
" 显示缩进
set list listchars=tab:\|-,trail:-,extends:»,precedes:«
" 关闭交换文件
set noswapfile
" 关闭备份
set nobackup
" 关闭撤销历史文件
set noundofile
" 智能缩进
set smarttab
" 制表符长度2个字符
set tabstop=2
" 关闭制表符和空格混排
set softtabstop=0
" 左右伸缩缩进的长度
set shiftwidth=2
" 不强制将制表符展开为空格
set noexpandtab


" ==============================================================================
"                           GUI Settings
" ==============================================================================
if has('gui')
  " 主题
  colorscheme desert
  " 显示光标所在行
  set cursorline
  " 显示光标所在列
  set cursorcolumn
endif


" ==============================================================================
"                           Leader Map
" ==============================================================================
" Leader键使用逗号
let mapleader = ","
" Normal模式下,Q关闭窗口
nmap <Leader>q :q<CR>
" Normal模式下,V水平拆分窗口
nmap <Leader>V :vsplit<CR>
" Normal模式下,V竖直拆分窗口
nmap <Leader>S :split<CR>


" ==============================================================================
"                           Normal Map
" ==============================================================================
" Normal模式下C-L将光标所在行放到窗口中间（仿Emacs）
nmap <C-L> zz
" Control S保存
nmap <C-S> :w<CR>
" Command S保存
nmap <M-S> :w<CR>


" ==============================================================================
"                           Insert Map
" ==============================================================================
" Control S保存
imap <C-S> <ESC>:w<CR>
" Command S保存
imap <M-S> <ESC>:w<CR>
" " Control A行首（仿Emacs）
" imap <C-A> <ESC>I
" " Control E行尾（仿Emacs）
" imap <C-E> <ESC>$a
" " Control F前进（仿Emacs）
" imap <C-F> <ESC>la
" " Control B后退（仿Emacs）
" imap <C-B> <ESC>ha
" " Control K删除后续（仿Emacs）
" imap <C-K> <ESC>lC
" " Control Shift :进入命令模式
" imap <C-S-:> <ESC>:


" ==============================================================================
"                           Windows Only
" ==============================================================================
" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if has('windows')
  if &diffopt !~# 'internal'
    set diffexpr=Windows_Diff()
  endif
endif
function Windows_Diff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction


" function! LWF_IncreaseFontSize()
" 	let l:fnt = &guifont
" 	let l:arr = split(l:fnt, ':')
" 	let l:sz = split(arr[1], "h")[0]
" 	let l:res = ""
" 	for i in range(len(arr))
" 		if i > 0
" 			let l:res = l:res . ":"
" 		endif
" 		if i == 1
" 			let l:nsz = l:sz + 1
" 			let l:res = l:res . l:nsz
" 			continue
" 		endif
" 		let l:res = l:res . l:arr[i]
" 	endfor
" 	return l:res
" endfunction


" function! LWF_DecreaseFontSize()
" 	let l:fnt = &guifont
" 	let l:arr = split(l:fnt, ':')
" 	let l:sz = split(arr[1], "h")[0]
" 	let l:res = ""
" 	for i in range(len(arr))
" 		if i > 0
" 			let l:res = l:res . ":"
" 		endif
" 		if i == 1
" 			let l:nsz = l:sz - 1
" 			let l:res = l:res . l:nsz
" 			continue
" 		endif
" 		let l:res = l:res . l:arr[i]
" 	endfor
" 	return l:res
" endfunction


function LWF_Tabify()
endfunction


function LWF_Untabify()
endfunction


" ==============================================================================
"                           Vim Plug
" ==============================================================================
function LWF_InitVimPlug()
	if has("windows")
		let l:command = "\"iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni $HOME/vimfiles/autoload/plug.vim -Force\""
		execute("!powershell -noprofile -command " . l:command)
	else
		let l:command = "curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
		execute("!" . l:command)
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


" ==============================================================================
" NERDTree
" ==============================================================================
Plug 'preservim/nerdtree'


" ==============================================================================
" 模糊查找
" ==============================================================================
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }


" ==============================================================================
" 单词高亮
" f<CR> 新增高亮
" f<BS> 删除高亮
" f<C-L>清除高亮
" ==============================================================================
Plug 'azabiong/vim-highlighter'


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
