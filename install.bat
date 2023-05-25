REM All files must be saved in the encoding of UTF-8
REM Standard directories, they must be install by sequence
REM -lang: language settings, which influences your menubar language, encoding and fileencoding
REM -default: vim vim default example.vim
REM -basic: your personal preference
REM -terminal: settings take effects on terminal
REM -gui: settings take effects on gui
REM -plugin: install plugins
REM -keymap: your keymap


chcp 65001
echo off

move %USERPROFILE%\_vimrc %USERPROFILE%_vimrc.bak
echo Old _vimrc has been backuped ......

set "VIMRC=%USERPROFILE%\_vimrc"
copy .\src\.vimrc.vim %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%

for %%l in (Share, Windows, Custom) do (
	for %%p in (lang, default, basic) do (
		if exist .\src\%%l\%%p\*.vim (
			echo --- Pouring .\src\%%l\%%p\*.vim into %VIMRC%
			type .\src\%%l\%%p\*.vim >> %VIMRC%
			echo: >> %VIMRC% & echo: >> %VIMRC%
		)
	)
)

type .\src\plugin_begin.vim >> %VIMRC%
for %%l in (Share, Windows, Custom) do (
	for %%p in (plugin) do (
		if exist .\src\%%l\%%p\*.vim (
			echo --- Pouring .\src\%%l\%%p\*.vim into %VIMRC%
			type .\src\%%l\%%p\*.vim >> %VIMRC%
			echo: >> %VIMRC% & echo: >> %VIMRC%
		)
	)
)
type .\src\plugin_end.vim >> %VIMRC%

for %%l in (Share, Windows, Custom) do (
	for %%p in (terminal, gui, plugin_settings, keymap) do (
		if exist .\src\%%l\%%p\*.vim (
			echo --- Pouring .\src\%%l\%%p\*.vim into %VIMRC%
			type .\src\%%l\%%p\*.vim >> %VIMRC%
			echo: >> %VIMRC% & echo: >> %VIMRC%
		)
	)
)

echo Installation complete!
timeout 3
