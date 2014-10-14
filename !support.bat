@echo off

reg.exe query "HKU\S-1-5-19">nul 2>&1
if %errorlevel% equ 1 goto runsupport

start %windir%\system32\mshta.exe \\nsi.ru\dfs\software\support\support.hta
exit
 
:runsupport
runas /user:nsi\support "%windir%\System32\mshta.exe \\nsi.ru\dfs\software\support\support.hta"
exit
