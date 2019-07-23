# backup-and-delete-bats
Batch (.bat) files for simple backup automation in MS-Windows


### bkpr.bat
This .bat creates a folder in a specified path and saves the specified files inside the folder created.

It is easily customizable:
All parameters below should be changed, otherwise it won't work.

1. change `[disk_drive_where_your_files_are]` to the letter of the drive where the files you want to be backed up are. If your files are in *C:/Program Files/System XYZ*, here you should put only *c:*

2. change `[folder_where_your_files_are]` to the complete path where the files you want to be backed up are. Following the previous example, here you should put *Program Files/System XYZ*

3. change `[disk_drive_where_your_files_should_go]` to the letter of the drive where the files should be saved to. If you want your files to be saved to *E:/bkp_folder*, here you should put only *e:*

4. change `[folder_where_your_files_should_go]` to the folder that should contain the new folder that will be created to contain your backed up files. Following the previous example, here you should put *bkp_folder*

5. change `[name_the_folder_should_have]` to the name you want the newly created folder to have. It will be a prefix to the full name of the new folder. The new folder will be created as *XXXX_YYYY-MM-DD* so here you should put what you want in *XXXX*. Still following the previous example, your files will be finally saved to *E:/bkp_folder/XXXX_YYYY-MM-DD*

6. change `[file_extensions_to_be_saved]` to whatever extensions you want to be backed up. If you want only *.xlsx* files to be backed up, just put *xlsx* here (no dots!). Whatever files with different extensions are inside the folder, WILL NOT be saved

P.S. The original names of the files aren't changed.

### del.bat
This .bat will delete a file on a given folder after 1 month.


It is easily customizable:
All parameters below should be changed, otherwise it won't work.

1. change `[path_to_your_folder_here]` to the complete path where your backed-up files are being saved to (e.g. E:\bkp_folder). Do not leave any leading spaces between the `=` and your path. Notice that **backslash** `\` is being used in the path, NOT forward slash `/`.

2. change `[folder_name_goes_here]` to the exact SAME name you've set in `[name_the_folder_should_have]` on the bkpr.bat file

