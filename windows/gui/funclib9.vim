vim9script


def g:LWEditRC()
	# {{{ 打开lwvim入口脚本
	if filereadable(g:LW_RC)
		execute $'edit {g:LW_RC}'
	else
		throw "Error reading: " .. g:LW_RC
	endif
	# }}}
enddef


def g:LWEditRCBase()
	# {{{ 打开lwvim基础配置脚本
	if filereadable(g:LW_RC_BASE)
		execute $'edit {g:LW_RC_BASE}'
	endif
	# }}}
enddef


def g:LWEditRCPlugins()
	# {{{ 打开lwvim插件脚本
	if filereadable(g:LW_RC_PLUGINS)
		execute $'edit {g:LW_RC_PLUGINS}'
	endif
	# }}}
enddef


def g:LWEditRCPluginOpts()
	# {{{ 打开lwvim插件参数脚本
	if filereadable(g:LW_RC_PLUGINOPTS)
		execute $'edit {g:LW_RC_PLUGINOPTS}'
	endif
	# }}}
enddef


def g:LWEditRCFunclib()
	# {{{ 打开lwvim函数库脚本
	if filereadable(g:LW_RC_FUNCLIB)
		execute $'edit {g:LW_RC_FUNCLIB}'
	endif
	# }}}
enddef


def g:LWEditRCCommands()
	# {{{ 打开lwvim命令脚本
	if filereadable(g:LW_RC_COMMANDS)
		execute $'edit {g:LW_RC_COMMANDS}'
	endif
	# }}}
enddef


def g:LWEditRCKeymap()
	# {{{ 打开lwvim键位映射脚本
	if filereadable(g:LW_RC_KEYMAP)
		execute $'edit {g:LW_RC_KEYMAP}'
	endif
	# }}}
enddef


def g:LWExploreCurFile()
	# {{{ 打开当前buffer对应的文件的目录，并自动选中该文件
	var curpath: string = expand("%:p")
	system($'explorer /select, {curpath}')
	# }}}
enddef


def g:LWSorted(lst: list<any>): list<any>
	# {{{ 返回排序后的副本
	var dup: list<any> = deepcopy(lst)
	sort(dup)
	return dup
	# }}}
enddef


def g:LWReversed(lst: list<any>): list<any>
	# {{{ 返回反转后的副本
	var dup: list<any> = deepcopy(lst)
	reverse(dup)
	return dup
	# }}}
enddef
