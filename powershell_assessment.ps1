<# PowerShell assessment for GHD Automation team
Valeria Ortiz León #>

<# Important note: 
For assessment purposes, I added a prompt to press Enter to exit and did not make it an autoexecutable script 
because of some "Write-Host" messages that were added for visibility. #>

<# Script #>

# Writes a message to the user to let them know the script has started
Write-Host "Starting script..."

# Defines a variable "directory" as C:/Users/%current user%/AppData/Roaming/Microsoft/Teams where the files to be cleaned are located
$directory = $env:AppData + "\Microsoft\Teams"

# Sets an array with the name of the locations where we want to clear the cache
$filesToRemove = @("application cache/cache",
                   "blob_storage",
                   "Cache",
                   "databases",
                   "GPUCache",
                   "IndexedDB",
                   "Local Storage",                   
                   "tmp")

# Checks first if the path exists
if (Test-Path -Path $directory)
{
    # Not necessary for an autoexecutable script but lets the user know that it's moving to the directory
    Write-Host "Moving to" $directory "to delete cache files."

    # Sets the current working directory to C:/Users/%current user%/AppData/Roaming/Microsoft/Teams
    Set-Location $directory
}
else
{
    # Lets the user know that the path was not found and exits the program.
    Write-Host "The path" $directory "was not found in the system."
    Read-Host -Prompt "Press Enter to exit"
    exit
}

# If the path exists, an array with the files contained inside C:/Users/%current user%/AppData/Roaming/Microsoft/Teams is created.
$archivos = Get-ChildItem -Name

# For each folder where we have to remove the cache files
foreach ($folder in $filesToRemove)
{
    # Checks if inside  C:/Users/%current user%/AppData/Roaming/Microsoft/Teams those folders exist using the array previously created with Get-ChildItem
    if ($archivos -ceq $folder)
        {
           # Sets the current directory temporarily to the folder we are cleaning
           $current_directory = $directory + "/" + $folder
           
           # Sets the current directory to inside the folder
           $current_directory += "\*"

           # Deletes recursively all files and subfolders in the folder
           Remove-Item -Path $current_directory -Recurse
        }
}

# Writes a message to the user letting them know that the cache files have been deleted. Prompts to Exit so the messages written can be read.
Write-Host "Cache files have been deleted."
Read-Host -Prompt "Press Enter to exit"