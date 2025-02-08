vim9script

# 自动安装vimplug
if !filereadable(expand('~/vimfiles/autoload/plug.vim'))
	var command: string = '"iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni $HOME/vimfiles/autoload/plug.vim -Force"'
	execute($'!powershell -noprofile -command {command}')
endif

call plug#begin()
{

	# {{{ 主题和显示相关插件
	{
		{
			# vim-startify 开始界面显示最近打开
			Plug 'mhinz/vim-startify'
		}
		{
			# vim-airline 状态栏主题
			Plug 'vim-airline/vim-airline'
			Plug 'vim-airline/vim-airline-themes'
		}
		{
			# Monokai主题
			Plug 'https://github.com/ku1ik/vim-monokai.git'
		}
		{
			# Monokai主题
			Plug 'dracula/dracula-theme'
		}
		{
			# Ondark主题
			Plug 'joshdick/onedark.vim'
		}
	}
	# }}}

	# {{{ 查找相关插件
	{
		{
			# FZF 文件模糊查找
			Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
			nmap <Leader>ff :FZF
		}
		{
			# LeaderF 在文件内模糊查找
			Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
			nmap <Leader>lf :Leaderf
		}
	}
	# }}}

	# {{{ 代码高亮和格式显示相关插件
	{
		{
			# vim-highlighter 高亮单词
			# f<CR>   新增高亮
			# f<BS>   删除高亮
			# f<C-L>  清除高亮
			Plug 'azabiong/vim-highlighter'
		}
		{
			# rainbow 彩虹括号
			Plug 'luochen1990/rainbow'
		}
		{
			# vim-trailing-whitespace 行尾空白字符高亮显示
			Plug 'bronson/vim-trailing-whitespace'
		}
	}
	# }}}

	# {{{ 版本控制相关插件
	{
		{
			# vim-fugitive Git相关命令支持
			# 基本使用方式和命令行下的用法类似，比如
			# Git diff、Git log
			# Git是更方便的git status命令
			Plug 'tpope/vim-fugitive'
		}
		{
			# git-gutter 版本修改后在窗口左侧进行提示
			Plug 'airblade/vim-gitgutter'
		}
	}
	# }}}

	# {{{ 自动补全相关插件
	{
		{
			# supertab 允许利用tab键完成自动补全
			Plug 'https://github.com/ervandew/supertab.git'
		}
		{
			# jedi
			Plug 'https://github.com/davidhalter/jedi-vim.git'
		}
	}
	# }}}

	# {{{ 文件系统浏览
	{
		{
			# nerdtree 树状文件目录
			Plug 'preservim/nerdtree'
		}
		{
			# nerdtree-git-plugin nerdtree显示git状态
			Plug 'xuyuanp/nerdtree-git-plugin'
		}
	}
	# }}}

	# {{{ 代码对象浏览
	{
		{
			# tagbar 代码对象查看器
			Plug 'majutsushi/tagbar'
		}
	}
	# }}}

	# {{{ 注释相关插件
	{
		{
			# nerdcommenter 注释插件
			# <Leader>cc 注释所选
			# <Leader>u 反注释所选
			Plug 'scrooloose/nerdcommenter'
		}
	}
	# }}}

	# {{{ 日志类插件
	{
	}
	# }}}

	# {{{ 未分类
	{
		{
			# vim-sensible 加载大多数人都会赞同的默认设定
			# 这个设定是在vimrc加载之后才会加载的
			Plug 'tpope/vim-sensible'
		}
	}
	# }}}

	# {{{ 异步
	{
		{
			# asyncrun 异步命令
			Plug 'skywind3000/asyncrun.vim'
		}
	}
	# }}}

}
call plug#end()
# Plugins End

