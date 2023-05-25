" ******************************************************************************
" ******************************************************************************
"
"                           Plugin Begin
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


