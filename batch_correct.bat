@echo off
set /p myPath=Input video directory?
set "myPath=%myPath:"=%"
set "newPath=%myPath%\Output"
if not exist "%newPath%" mkdir "%newPath%"
for %%F in ("%myPath%\*") do (
    echo Input : %myPath%\%%~nxF
	echo Output: %newPath%\%%~nxF
	
	if "%%~xF" == ".jpg" (
		echo Processing image
		python.exe C:\Projects\DCC\dive-color-corrector\correct.py image "%%F" "%newPath%\%%~nxF"
	)
	if "%%~xF" == ".jpeg" (
		echo Processing image
		python.exe C:\Projects\DCC\dive-color-corrector\correct.py image "%%F" "%newPath%\%%~nxF"
	)
	if "%%~xF" == ".JPG" (
		echo Processing image
		python.exe C:\Projects\DCC\dive-color-corrector\correct.py image "%%F" "%newPath%\%%~nxF"
	)
	if "%%~xF" == ".JPEG" (
		echo Processing image
		python.exe C:\Projects\DCC\dive-color-corrector\correct.py image "%%F" "%newPath%\%%~nxF"
	)
	if "%%~xF" == ".png" (
		echo Processing image
		python.exe C:\Projects\DCC\dive-color-corrector\correct.py image "%%F" "%newPath%\%%~nxF"
	)
	if "%%~xF" == ".PNG" (
		echo Processing image
		python.exe C:\Projects\DCC\dive-color-corrector\correct.py image "%%F" "%newPath%\%%~nxF"
	)
	
	if "%%~xF" == ".mp4"  (
		echo Processing video
		python.exe C:\Projects\DCC\dive-color-corrector\correct.py video "%%F" "%newPath%\%%~nxF"
	)
	if "%%~xF" == ".MP4" (
		echo Processing video
		python.exe C:\Projects\DCC\dive-color-corrector\correct.py video "%%F" "%newPath%\%%~nxF"
	)
	if "%%~xF" == ".mov" (
		echo Processing video
		python.exe C:\Projects\DCC\dive-color-corrector\correct.py video "%%F" "%newPath%\%%~nxF"
	)
	if "%%~xF" == ".MOV"  (
		echo Processing video
		python.exe C:\Projects\DCC\dive-color-corrector\correct.py video "%%F" "%newPath%\%%~nxF"
	)
)
pause