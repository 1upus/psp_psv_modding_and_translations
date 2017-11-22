del *.png
for %%X in (*.gim) do gimconv "%%X" -o "%%X.png"
@for %%a in (*.*) do @for %%b in ("%%~Na") do @ren "%%a" "%%~Nb%%~Xa"
pause