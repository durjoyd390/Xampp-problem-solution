@echo off
setlocal EnableDelayedExpansion
pushd "%~dp0"

if exist data_old (
    rd /s /q data_old
)

set "BAR_WIDTH=50"
set "STEP=5"
set "SLEEP_MS=80"

for /L %%P in (5,%STEP%,100) do (
    set /A filled = %%P * BAR_WIDTH / 100
    set "fill="
    for /L %%F in (1,1,!filled!) do set "fill=!fill!->"

    set /A empty = BAR_WIDTH - filled
    set "space="
    for /L %%S in (1,1,!empty!) do set "space=!space! "

    cls
    echo Xampp MySQL Problem Solution
    echo Made By Mr DD
    echo Github: https://github.com/durjoyd390
    echo ==============================================
    echo.
    echo.
    echo Step 1: Renaming data to data_old %%P%%
    echo [!fill!!space!]
    echo.
    echo Note: Do not close the window! If you do, you may lose your databases.

    powershell -Command "Start-Sleep -Milliseconds %SLEEP_MS%"
)
ren data data_old


set "BAR_WIDTH=50"
set "STEP=5"
set "SLEEP_MS=80"

for /L %%P in (5,%STEP%,100) do (
    set /A filled = %%P * BAR_WIDTH / 100
    set "fill="
    for /L %%F in (1,1,!filled!) do set "fill=!fill!->"

    set /A empty = BAR_WIDTH - filled
    set "space="
    for /L %%S in (1,1,!empty!) do set "space=!space! "

    cls
    echo Xampp MySQL Problem Solution
    echo Made By Mr DD
    echo Github: https://github.com/durjoyd390
    echo ==============================================
    echo.
    echo.
    echo Step 2: Creating new data folder %%P%%
    echo [!fill!!space!]
    echo.
    echo Note: Do not close the window! If you do, you may lose your databases.

    powershell -Command "Start-Sleep -Milliseconds %SLEEP_MS%"
)
mkdir data


set "BAR_WIDTH=50"
set "STEP=5"
set "SLEEP_MS=80"

for /L %%P in (5,%STEP%,100) do (
    set /A filled = %%P * BAR_WIDTH / 100
    set "fill="
    for /L %%F in (1,1,!filled!) do set "fill=!fill!->"

    set /A empty = BAR_WIDTH - filled
    set "space="
    for /L %%S in (1,1,!empty!) do set "space=!space! "

    cls
    echo Xampp MySQL Problem Solution
    echo Made By Mr DD
    echo Github: https://github.com/durjoyd390
    echo ==============================================
    echo.
    echo.
    echo Step 3: Copying from backup to data [skipping ibdata1] %%P%%
    echo [!fill!!space!]
    echo.
    echo Note: Do not close the window! If you do, you may lose your databases.

    powershell -Command "Start-Sleep -Milliseconds %SLEEP_MS%"
)

robocopy backup data /E /COPYALL /XF ibdata1

echo Merging legacy files…
robocopy data_old data /E /COPYALL /XC /XN /XO


set "BAR_WIDTH=50"
set "STEP=5"
set "SLEEP_MS=80"

for /L %%P in (5,%STEP%,100) do (
    set /A filled = %%P * BAR_WIDTH / 100
    set "fill="
    for /L %%F in (1,1,!filled!) do set "fill=!fill!->"

    set /A empty = BAR_WIDTH - filled
    set "space="
    for /L %%S in (1,1,!empty!) do set "space=!space! "

    cls
    echo Xampp MySQL Problem Solution
    echo Made By Mr DD
    echo Github: https://github.com/durjoyd390
    echo ==============================================
    echo.
    echo.
    echo Step 4: Deleting data_old %%P%%
    echo [!fill!!space!]
    echo.
    echo Note: Do not close the window! If you do, you may lose your databases.

    powershell -Command "Start-Sleep -Milliseconds %SLEEP_MS%"
)
rd /s /q data_old

cls

popd
echo.
echo Xampp MySQL Problem Solution
echo Made By Mr DD
echo Github: https://github.com/durjoyd390
echo ==============================================
echo.
echo.
echo ===== Restore complete! =====
pause