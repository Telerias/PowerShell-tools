# first one
Get-ChildItem "D:\Folder" -recurse | Get-Acl -Exclude *.* | export-csv e:\scripts\folder_permission.csv

#### second one
# From http://stackoverflow.com/questions/28119096/how-to-list-folder-permissions-located-on-a-different-server
#Step 1: remotely connect to server
Enter-PSSession -ComputerName servernamegoeshere
#Step 2: get list of permissions on folder and save to csv
get-acl E:\foldernamehere | 
select -expand access |
export-csv C:\Users\usernamegoeshere\Documents\listofperms.csv |
#Step 3: close remote connection
Exit-PSSession

####

# third to try
Get-Acl .\Bogus | Format-List
