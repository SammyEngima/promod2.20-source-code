@echo off

SET mod_name=pml220
SET work_directory=%~dp0
cd %work_directory%

del ..\%mod_name%\*.iwd

7za a -r -mx=9 -mpass=15 -mfb=258 -mmt=on -mtc=off -tzip ..\%mod_name%\%mod_name%.iwd weapons images sound
7za a -r -mx=9 -mpass=15 -mfb=258 -mmt=on -mtc=off -tzip ..\%mod_name%\z_c_r.iwd promod_ruleset

compile_fastfile.bat
