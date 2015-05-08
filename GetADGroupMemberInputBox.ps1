# https://gallery.technet.microsoft.com/scriptcenter/Get-AD-Group-members-based-a0a2c37a?utm_content=buffer488a9&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer
# GetADGroupMemberInputBox.ps1  
# Script By: Tim Buntrock 
# Open an input box so you can enter the group name 
# Create a list of the group members from the entered group name and save it to C:\gname.csv  
# After the creation the file will be opened 
  
  
  
########### Script--->START ###########  
 
# Input Box 
[void][System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic') 
$gname = [Microsoft.VisualBasic.Interaction]::InputBox("Enter the AD Group name", "Get AD Group Members", "") 
 
# Get-ADGroupMember with specified group name and export it to c:\gname.csv 
Get-ADGroupMember -Identity $gname | select name | export-csv "c:\$gname.csv" 
 
# Open the created csv file 
Invoke-Item "c:\$gname.csv" 
 
########### Script--->END #############
