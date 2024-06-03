vim9script


def g:LWInitCache(): dict<string>
	# {{{ 初始化配置缓存文件
	if !isdirectory(g:LW_CACHEDIR)
		mkdir(g:LW_CACHEDIR)
	endif
	if !filereadable(g:LW_CACHCONFIG)
		var cache: dict<string> = {}
		var jsonstr: string = json_encode(cache)
		writefile([jsonstr], g:LW_CACHCONFIG)
		return cache
	else
		var totlines: string = ""
		var lines = readfile(g:LW_CACHCONFIG)
		for line in lines
			totlines = totlines .. line
		endfor
		var cache: dict<string> = json_decode(totlines)
		return cache
	endif
	# }}}
enddef


def g:LWReadCache(key: string): string
	# {{{ 读取配置缓存参数
	var cache: dict<string> = g:LWInitCache()
	if has_key(cache, key)
		return cache[key]
	else
		return ""
	endif
	# }}}
enddef


def g:LWWriteCache(key: string, value: string): dict<string>
	# {{{ 写入配置缓存参数
	var cache: dict<string> = g:LWInitCache()
	cache[key] = value
	var jsonstr: string = json_encode(cache)
	writefile([jsonstr], g:LW_CACHCONFIG)
	return cache
	# }}}
enddef


def g:LWRemoveCache(key: string): dict<string>
	# {{{ 写入配置缓存参数
	var cache: dict<string> = g:LWInitCache()
	if has_key(cache, key)
		remove(cache, key)
	endif
	var jsonstr: string = json_encode(cache)
	writefile([jsonstr], g:LW_CACHCONFIG)
	return cache
	# }}}
enddef


def g:LWInit()
	# {{{1 初始化lwvim的环境变量
	# {{{2 OS
	var platform: string
	if has('win32') || has('win64')
		platform = 'windows'
	elseif has('linux')
		platform = 'linux'
	elseif has('osx')
		platform = 'osx'
	endif
	# }}}2
	# {{{2 SEP
	var sep: string
	if has('windows')
		sep = '\'
	else
		sep = '/'
	endif
	# }}}2
	# {{{2 GUI or Terminal
	var device: string
	if has("gui_running")
		device = 'gui'
	else
		device = 'term'
	endif
	# }}}2
	# {{{2 Global Variables
	final g:LW_PLATFORM: string      = platform
	final g:LW_DEVICE: string        = device
	final g:LW_SEP: string           = sep
	final g:LW_HOME: string          = expand($'~{sep}lwvim{sep}{g:LW_PLATFORM}{sep}{g:LW_DEVICE}')
	final g:LW_CACHEDIR: string      = $'{g:LW_HOME}{sep}cache'
	final g:LW_CACHCONFIG: string    = $'{g:LW_CACHEDIR}{sep}config.json'
	final g:LW_RC: string            = expand($'~{sep}lwvim{sep}lwvim.vim')
	final g:LW_RC_BASE: string       = $'{g:LW_HOME}{sep}base.vim'
	final g:LW_RC_PLUGINS: string    = $'{g:LW_HOME}{sep}plugins.vim'
	final g:LW_RC_PLUGINOPTS: string = $'{g:LW_HOME}{sep}pluginopts.vim'
	final g:LW_RC_FUNCLIB: string    = $'{g:LW_HOME}{sep}funclib.vim'
	final g:LW_RC_COMMANDS: string   = $'{g:LW_HOME}{sep}commands.vim'
	final g:LW_RC_KEYMAP: string     = $'{g:LW_HOME}{sep}keymap.vim'
	# }}}2
	# }}}1
enddef


def g:LWLoadRC(rcpath: string)
	# {{{ 根据输入的vim脚本路径自动加载脚本
	if filereadable(rcpath)
		execute $'source {rcpath}'
	else
		echo $'RC not found: {rcpath}'
	endif
	# }}}
enddef


g:LWInit()
g:LWInitCache()
g:LWLoadRC(g:LW_RC_BASE)
g:LWLoadRC(g:LW_RC_PLUGINS)
g:LWLoadRC(g:LW_RC_PLUGINOPTS)
g:LWLoadRC(g:LW_RC_FUNCLIB)
g:LWLoadRC(g:LW_RC_COMMANDS)
g:LWLoadRC(g:LW_RC_KEYMAP)
