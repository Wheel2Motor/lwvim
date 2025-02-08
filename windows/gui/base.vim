vim9script

# 软件语言改为英文
$LANG = 'en_US'
# 菜单栏语言改为英文
set langmenu=en_US
# 修改VIM内部字符编码为UTF8
set encoding=utf-8
# 修改VIM打开文件时自动识别编码的顺序
set fileencodings=ucs-bom,utf-8,gb18030,cp936,latin1
# 加载VIM内部示例，实例中包含了平台的默认设置
source $VIMRUNTIME/vimrc_example.vim
# 命令行高度给2
set cmdheight=2
# 启用语法高亮
syntax on
# 启用文件类型自动检测
filetype on
# 启用文件类型自动检测得到的相关插件组合
filetype plugin on
# 启用文件类型自动检测得到的indent
filetype indent on
# 显示行号
set number
# 相对行号
# set relativenumber
# 下方状态栏显示行号、列号
set ruler
# 搜索等字符串操作不忽略大小写
set noic
# 高亮搜索
set hlsearch
# 渐进式搜索
set incsearch
# 高亮当前行
set cursorline
# 错误警告采用闪屏的方式
set visualbell
# 不折行
set nowrap
# 拆分窗口尽量往窗口下方或右侧拆分
set splitbelow splitright
# 不使用交换文件
set noswapfile
# 不使用文件保存撤销历史
set noundofile
# 不使用自动备份
set nobackup
# Tab长度为2个字符
set tabstop=2
# 左右移动代码块，单次操作为2个字符
set shiftwidth=2
# 关闭工具栏
set guioptions-=T
# 关闭左侧滚动条
set guioptions-=L guioptions-=l
# 关闭右侧滚动条
set guioptions-=R guioptions-=r
# 修改空白字符显示方式
set list listchars=tab:\|\ ,trail:-
# 字体
if strlen(&guifont) == 0
	var cache = g:LWReadCache("guifont")
	if strlen(cache) == 0
		set guifont=*
	else
		&guifont = cache
	endif
endif
# Augroups
augroup vim
	autocmd!
	autocmd FileType vim set foldmethod=marker
augroup END
