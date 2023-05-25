" ******************************************************************************
" ******************************************************************************
"
"                           Custom Plugin Settings
"
" ******************************************************************************
" ******************************************************************************


" ------------------------------------------------------------------------------
" youcompleteme
" 开启主动补全
let g:ycm_auto_trigger = 1
" 主动触发补全快捷键
let g:ycm_key_invoke_completion = '<C-D>'
" 字符串补全
let g:ycm_complete_in_strings = 1
" 启用语义补全
let g:ycm_enable_semantic_highlighting = 1
" 警告字符
let g:ycm_warning_symbol = '!'
" 错误字符
let g:ycm_error_symbol = 'X'
" 语义补全Trigger
let g:ycm_semantic_triggers =  {
	\   'c' : ['->', '.', 're!\w{2}'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
	\   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.', 're!\w{2}'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
" 补全文件白名单
let g:ycm_filetype_whitelist = { 
	\ "c":1,
	\ "cpp":1, 
	\ "python":1,
	\ "typescript":1,
	\ "vb":1,
	\ "cs":1,
	\ "lua":1,
	\ "sh":1,
	\ }
" 补全文件黑名单
let g:ycm_filetype_blacklist = {
	\ 'txt':1,
	\ 'exe':1,
	\ 'dat':1,
	\ 'o':1,
	\ 'obj':1,
	\ 'dll':1,
	\ 'so':1,
	\ 'lib':1,
	\ 'a':1,
	\ 'text':1,
	\ 'markdown':1,
	\ 'php':1,
	\ }


" ------------------------------------------------------------------------------
" ale关闭补全
" let g:ale_completion_enabled = 1
