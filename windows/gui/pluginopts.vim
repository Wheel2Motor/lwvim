vim9script

{

	# {{{ 主题和显示相关插件
	{
		{
			# vim-startify
		}
		{
			# vim-airline
			g:airline_theme = 'cool'
		}
		{
			# Monokai
			colorscheme monokai
		}
		{
			# Ondark
		}
	}
	# }}}

	# {{{ 查找相关插件
	{
		{
			# FZF
			nmap <Leader>ff :FZF
		}
		{
			# LeaderF
			nmap <Leader>lf :Leaderf
		}
	}
	# }}}

	# {{{ 代码高亮和格式显示相关插件
	{
		{
			# vim-highlighter
		}
		{
			# rainbow
			g:rainbow_active = 1
		}
		{
			# vim-trailing-whitespace
		}
	}
	# }}}

	# {{{ 版本控制相关插件
	{
		{
			# vim-fugitive
		}
		{
			# git-gutter
		}
	}
	# }}}

	# {{{ 自动补全相关插件
	{
		{
			# supertab
		}
		{
			g:jadi#auto_initialization = 0
			g:jedi#popup_on_dot = 0 # 按点号的时候不自动补全，否则太慢
			g:jedi#show_call_signature = 2 # 在屏幕上显示函数参数列表
		}
	}
	# }}}

	# {{{ 文件系统浏览
	{
		{
			# nerdtree
		}
		{
			# nerdtree-git-plugin
		}
	}
	# }}}

	# {{{ 代码对象浏览
	{
		{
			# tagbar
			# g:tagbar_position = 'botright'
		}
	}
	# }}}

	# {{{ 注释相关插件
	{
		{
			# nerdcommenter
		}
	}
	# }}}

	# {{{ 未分类
	{
		{
			# vim-sensible
		}
	}
	# }}}

}
