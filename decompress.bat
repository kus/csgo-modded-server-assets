@echo off
if exist "C:\Program Files\7-Zip\7z.exe" (
    FOR /F "usebackq tokens=1" %%i IN (`DIR /S/B *.bz2` ) DO (
        echo Extracting %%i
        "C:\Program Files\7-Zip\7z.exe" x %%i -aoa -o%%i\.. > nul
        del %%i
    )
) else (
    echo Couldn't find 7-Zip at "C:\Program Files\7-Zip\7z.exe". Please make sure it's installed or update path.
)
pause