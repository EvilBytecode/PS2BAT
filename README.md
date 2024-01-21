PS2BAT Module Documentation
===========================

- Powershell Into Batchfile!

Overview
--------

The PS2BAT module provides a cmdlet called `Convert-PSToBAT`, allowing users to convert PowerShell scripts (`*.ps1` files) into batch files (`*.bat` files). This can be useful for scenarios where running PowerShell scripts might be restricted, and a batch file serves as a workaround.

## Installing  Module:
```powershell
Install-Module -Name PS2BAT
```

Usage
-----

### Standard Module Import:
```powershell
Import-Module -Name PS2BAT -Force
Convert-PSToBAT -Path "POWERSHELL_FILE_PATH"
```        
    

*   **`-Path`:** Specifies the path to the PowerShell script file you want to convert.

### Alternative Import Method (IF PROBLEMS):
```powershell
Import-Module -Name 'C:\Program Files\WindowsPowerShell\Modules\PS2BAT\1.0.0\PS2BAT.psm1' -Force 
Convert-PSToBAT -Path "PATH_TO_PS1_FILE"`
```        
    

Users can use this alternative import method if they encounter issues with the standard module import. Make sure to provide the correct path to the `PS2BAT.psm1` file and the PowerShell script file you want to convert.
