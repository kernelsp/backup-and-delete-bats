@echo off
rem Developed by Higor Kern

set FOLDER_PATH=[path_to_your_folder_here]

set NAME=[folder_name_goes_here]

rem gets the date
for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
echo ldt_ini: %ldt%
set year=%ldt:~0,4%
set month=%ldt:~4,2%
set day=%ldt:~6,2%

rem finds last month and last year
set /a month=%month%-1 

if %month% EQU 0 (set month=12 && set /a year=%year%-1)

if %month% LSS 10 (set zero=0 && set month=%zero%%month%)
echo month: %month%
set ldt=%NAME%_%year%-%month%-%day%
echo ldt_new: %ldt%
rem search for the right file and deletes it
for /d /r %FOLDER_PATH% %%d in (%ldt%) DO @if exist %%d echo "%%d" && rd /s/q "%%d"
