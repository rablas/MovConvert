exiftool -api QuickTimeUTC -ee "-Quicktime:CreateDate<CreationDate" -ext mov input
@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set /a cnt=0
for %%i in (input\*.mov) do (
    set /a cnt+=1
	echo %%i
	echo %%~ni-1.mp4
	PrintBig !cnt! 10 400
	HandBrakeCLI -i %%i -o res\%%~ni-1.mp4 --preset="Email 25 MB 3 Minutes 720p30"
	exiftool -ee -TagsFromFile %%i res\%%~ni-1.mp4
)
@echo on
exiftool -ee "-Quicktime:ModifyDate<Quicktime:CreateDate" -ext mp4 res
exiftool -ee -api QuickTimeUTC "-FileCreateDate<Quicktime:CreateDate" -ext mp4 res
exiftool -ee -api QuickTimeUTC "-FileModifyDate<Quicktime:CreateDate" -ext mp4 res
pause
