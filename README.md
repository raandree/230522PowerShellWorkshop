# 230522 PowerShel lWorkshop

## Notes

- Your PowerShell history is saved at this location and stores also clear text password :warning:.

    ```powershell
    Get-Content -Path (Get-PSReadLineOption).HistorySavePath
    ```


- Code Quality

    For ensuring code quality refer to [PSScriptAnalyzer](https://github.com/PowerShell/PSScriptAnalyzer)

- How to prevent from running code accidentally?

    Put a `return` statement at the beginning or implement `WhatIf` feature.

- More info on how to write functions can be found here:

    https://github.com/raandree/PowerShellTraining/blob/main/Functions/Readme.md

NTFSSecurity

dir -Recurse -Directory -Depth 1 | Get-NTFSInheritance | Where-Object { -not $_.AccessInheritanceEnabled } | Enable-NTFSAccessInheritance -RemoveExplicitAccessRules

-------------

return vs emitting values

function Add
{
    param (
        $i1,
        $i2
    )
    
    $sum = $i1 + $i2
    $i1
    $i2
    write-host "The sum is $sum"
    $sum
}

$data = Add -i1 5 -i2 7


--------------------

