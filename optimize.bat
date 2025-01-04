@echo off
echo optipng

for /r %%i in (*.png) do (
    optipng -o3 "%%i"
)

echo zopflipng

for /r %%i in (*.png) do (
    if exist "%%i" (
        zopflipng --iterations=15 --filters=0me --lossy_transparent -ym "%%i" "%%i"
    )
)

echo done
