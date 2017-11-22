@echo off
for %%X in (*.rssa) do TextER -c "%%X" -gim
pause