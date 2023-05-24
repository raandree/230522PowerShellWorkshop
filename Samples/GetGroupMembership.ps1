$wi = [System.Security.Principal.WindowsIdentity]::GetCurrent()

$wi.Groups.Value -contains 'S-1-5-32-544'

$wi.Groups | ForEach-Object {
    Write-Host $_.Translate([System.Security.Principal.NTAccount]) -ForegroundColor Green
}

