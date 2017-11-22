@echo off
del *.gz
for %%X in (*.gim) do 7z a -tgzip "%%X.gz" "%%X"
@for %%a in (*.*) do @for %%b in ("%%~Na") do @ren "%%a" "%%~Nb%%~Xa"
del *.gim
pause