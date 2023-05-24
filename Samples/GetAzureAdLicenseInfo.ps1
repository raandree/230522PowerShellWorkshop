Get-AzADUser -Filter "department eq 'retail'" |
ForEach-Object {
    [pscustomobject]@{
        Name        = $_.DisplayName
        Id          = $_.Id
        LicenseInfo = Get-AzureADUserLicenseDetail -ObjectId $_.Id
    }
}
