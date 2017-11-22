@echo off
del temp\*.png
del ok\*.png
del ok\*.gim
for %%X in (*.png) do pngout "%%X" "temp\%%X" /c6 /force
for %%X in (*.png) do pngnq -s 1 -n 256 -d ok -e .png  "temp\%%X"
for %%X in (*.png) do gimconv "ok\%%X" --format_style psp --format_endian little --pixel_order faster --image_format index8
@for %%a in (*.*) do @for %%b in ("%%~Na") do @ren "%%a" "%%~Nb%%~Xa"
del temp\*.png
del ok\*.png
pause