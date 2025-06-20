#Script to search for files in a directory based on user input
$input1 = read-host -Prompt "Enter Directory for Folder"
$input2 = read-host -Prompt "Enter File Type"
Get-ChildItem -Path $input1* -Filter *$input2 | Select-Object Name,Directory | Format-Table -AutoSize
