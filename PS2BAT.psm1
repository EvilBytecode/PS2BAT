function Convert-PSToBAT {
    param (
        [string]$Path
    )
    
    process {
        if (-not $Path -or -not (Test-Path -Path $Path)) {
            Write-Host "Invalid path: $Path"
            return
        }

        $encoded = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes((Get-Content $Path -Raw -Encoding UTF8)))
        "@echo off`npowershell.exe -NoExit -encodedCommand $encoded" | Set-Content "$Path.bat" -Encoding Ascii
    }
}

Export-ModuleMember -Function Convert-PSToBAT