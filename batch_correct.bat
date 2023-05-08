@echo off
set /p myPath=Input video directory?
set "myPath=%myPath:"=%"
set "newPath=%myPath%\Output"
for %%F in ("%myPath%\*") do (
    echo Input : %myPath%\%%~nxF
	echo Output: %newPath%\%%~nxF
	python.exe C:\Projects\DCC\dive-color-corrector\correct.py video "%%F" "%newPath%\%%~nxF"
)