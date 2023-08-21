@echo off
setlocal enabledelayedexpansion

rem Loop through all files in the current directory
for %%F in (*) do (
    set "filename=%%~nF"
    set "newfilename=!filename:-=!"
    
    rem Check if the filename has "egg" in it
    if not "!filename!"=="!newfilename!" (
        ren "%%F" "!newfilename!%%~xF"
    )
)

echo Files renamed.
pause
