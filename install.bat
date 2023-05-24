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
copy .\src\.vimrc %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%


REM ******************************************************************************
REM ******************************************************************************
REM
REM                           Share
REM
REM ******************************************************************************
REM ******************************************************************************


REM Share
REM Share lang
type .\src\Share\lang\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%
REM Share default
type .\src\Share\default\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%
REM Share basic
type .\src\Share\basic\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%
REM Share terminal
type .\src\Share\terminal\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%
REM Share gui
type .\src\Share\gui\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%
REM Share plugin
type .\src\Share\plugin\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%
REM Share keymap
type .\src\Share\keymap\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%


REM ******************************************************************************
REM ******************************************************************************
REM
REM                           Windows
REM
REM ******************************************************************************
REM ******************************************************************************


REM Windows lang
type .\src\Windows\lang\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%
REM Windows default
type .\src\Windows\default\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%
REM Windows basic
type .\src\Windows\basic\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%
REM Windows terminal
type .\src\Windows\terminal\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%
REM Windows gui
type .\src\Windows\gui\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%
REM Windows plugin
type .\src\Windows\plugin\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%
REM Windows keymap
type .\src\Windows\keymap\*.vim >> %VIMRC%
echo: >> %VIMRC% & echo: >> %VIMRC%

echo Installation complete!
timeout 3
