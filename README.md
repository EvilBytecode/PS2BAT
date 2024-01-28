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
> Make sure to run Powershell as administrator.

If you don't want to install the module, you can try the direct import method (See below).

Usage
-----

### Standard Module Import:
```powershell
Import-Module -Name PS2BAT -Force
Convert-PSToBAT -Path "POWERSHELL_FILE_PATH"
```
    

*   **`-Path`:** Specifies the path to the PowerShell script file you want to convert.

### Alternative Import Method (IF PROBLEMS):
> Only for Windows PowerShell. Not for PowerShell 7.
```powershell
Import-Module -Name 'C:\Program Files\WindowsPowerShell\Modules\PS2BAT\1.0.0\PS2BAT.psm1' -Force 
Convert-PSToBAT -Path "PATH_TO_PS1_FILE"
```
  
### Direct Import Method:
> - Works with all versions of Powershell  
> - No need to install the module
1. Make sure your [Execution Policy](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.4) is compatible.
2. Open PowerShell in the folder of the module.  
3. Then execute this:
```powershell
Import-Module -Name .\PS2BAT.psm1 
Convert-PSToBAT -Path "PATH_TO_PS1_FILE"
```    

Users can use alternative import methods if they encounter issues with the standard module import. Make sure to provide the correct path to the `PS2BAT.psm1` file and the PowerShell script file you want to convert.
