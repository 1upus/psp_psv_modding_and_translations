@echo off
for %%X in (*.rssa) do TextER -e "%%X" -gim
pause