# PowerShellAssessment
PowerShell Assessment for GHD Automation team.

# Description of the project
Develop a PowerShell script to fix a common Teams issue that causes Teams calendar to not synchronize properly with the Outlook calendar.

# Functionality of the project
The script will fix the Teams-Outlook calendar synchronization issue by clearing the cache files in the following directories:
%appdata%\Microsoft\Teams\application cache\cache
%appdata%\Microsoft\Teams\application cache\blob_storage
%appdata%\Microsoft\Teams\application cache\Cache
%appdata%\Microsoft\Teams\application cache\databases
%appdata%\Microsoft\Teams\application cache\GPUcache
%appdata%\Microsoft\Teams\application cache\IndexedDB
%appdata%\Microsoft\Teams\application cache\Local Storage
%appdata%\Microsoft\Teams\application cache\tmp

# Usage 
Run the file with any of the next options:

1. Right click on the powershell_assessment.ps1 file and select "Run with PowerShell"
2. Load the powershell_assessment.ps1 into the PowerShell ISE and click on "Run"
3. Open CMD or PowerShell, move to the location in CMD or PowerShell where the file is located and type the following
```bash
./powershell_assessment.ps1
```

# Author
Valeria Ortiz León

