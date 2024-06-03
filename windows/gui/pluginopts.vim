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

	# {{{ 语法检查相关插件
	{
		{
			# ale
			g:ale_completion_enabled = 1
			g:ale_type_map = {'Warning': ''}
			g:ale_linters_explicit = 1
			g:ale_completion_delay = 500
			g:ale_echo_delay = 20
			g:ale_lint_delay = 500
			g:ale_echo_msg_format = '[%linter%] %code: %%s'
			g:ale_lint_on_text_changed = 'normal'
			g:ale_lint_on_insert_leave = 1
			g:ale_python_mypy_options = '--cache-dir ~'
			g:airline#extensions#ale#enabled = 1
		}
	}
	# }}}

	# {{{ 自动补全相关插件
	{
		{
			# supertab
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
