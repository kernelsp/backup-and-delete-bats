@ echo off
echo Back-up automation
rem Developed by Higor Kern

rem // Settings:
rem Initial disk drive:
set inidrive=[disk_drive_where_your_files_are]
rem Directory where the files to be backed up are:
set inifolder=[folder_where_your_files_are]
rem Destination disk drive:
set destdrive=[disk_drive_where_your_files_should_go]
rem Directory where the files should be saved to:
set destfolder=[folder_where_your_files_should_go]

rem // Creating folder at the destination:
%destdrive%
cd\
cd %destfolder%
set name=[name_the_folder_should_have]

For /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set ldt=%name%_%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2%
md %ldt%
cd %ldt%

set origin=%inidrive%\%inifolder%\
set destination=%destdrive%\%destfolder%\%ldt%\
set filextension=[file_extensions_to_be_saved]
set name=
set today=

echo Directory created.

rem // Copying files
copy %origin%*.%filextension% %destination%

set origin=
set destination=

echo Backup finished!