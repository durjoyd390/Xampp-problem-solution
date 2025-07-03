@echo off
REM — Ensure we’re in the folder where this script lives
pushd "%~dp0"

REM — Step 4: Rename “data” → “data_old”
if exist data_old (
    echo Removing existing data_old folder…
    rd /s /q data_old
)
echo Renaming data → data_old…
ren data data_old

REM — Step 5: Create new “data” and copy from “backup” (excluding ibdata1)
echo Creating new data folder…
mkdir data
echo Copying from backup → data (skipping ibdata1) …
robocopy backup data /E /COPYALL /XF ibdata1

REM — Step 6: Merge files from data_old → data without overwriting
echo Merging legacy files…
robocopy data_old data /E /COPYALL /XC /XN /XO

REM — Step 7: Delete the old folder
echo Deleting data_old…
rd /s /q data_old

popd
echo.
echo ===== Restore complete! =====
pause