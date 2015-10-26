set BUNDLE_DIR=bundle
set GIT="C:\Program Files\Git\bin\git.exe"
set PYTHON="C:\Python27\python.exe"
set PYTHON_INCLUDE_DIR="C:\Python27\include"
set PYTHON_LIBRARY="C:\Python27\libs\python27.lib"
set LLVM="C:\Program Files\LLVM"
set CMAKE="C:\Program Files\CMake\bin\cmake.exe"

:: clone Vundle.vim
call :clone_github_project Vundle.vim

:: clone and build ycm first
call :clone_github_project YouCompleteMe
call :build_ycm
exit /B 0

:clone_github_project
setlocal
	set _project=%1
	set _dest="%BUNDLE_DIR%\%_project%"

	if not exist %_dest% goto end_if
		echo "%_dest% exists, skipping ..."
		exit /B
	:end_if

	mkdir %BUNDLE_DIR%
	%GIT% clone "https://github.com/chubiei/%_project%" %_dest%

	exit /B
endlocal

:build_ycm
setlocal
	set _ycm_dir="%BUNDLE_DIR%/YouCompleteMe"

	if exist %_ycm_dir% goto end_if
		echo "YouCompleteMe does not exist, abort"
		exit /B
	:end_if

	echo "building YouCompleteMe ..."
	cd %_ycm_dir%

	echo "initializing ycm components ..."
	%GIT% submodule update --init --recursive

	echo "start building ..."
	%PYTHON% ./install.py --clang-completer --gocode-completer --python-include-dir=%PYTHON_INCLUDE_DIR% --python-library=%PYTHON_LIBRARY% --path-to-llvm-root=%LLVM% --cmake=%CMAKE% --msvc=12

	exit /B
endlocal



