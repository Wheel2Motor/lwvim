" ******************************************************************************
" ******************************************************************************
"
"                           GUI Settings
"
" ******************************************************************************
" ******************************************************************************


if has('gui')
  " 主题
  colorscheme desert
  " 显示光标所在行
  set cursorline
  " 显示光标所在列
  set cursorcolumn
	" GUI启动时全屏
	au GUIEnter * simalt ~x
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
endif
