<#
    .SYNOPSIS
    Sets Disk Cleanup tool settings for each operatng system.
  
    .NOTES
    NAME: Set-CleanMgrSettings.ps1
    VERSION: 1.1
    AUTHOR: Aaron Parker
    LASTEDIT: April 25, 2016
 
    .LINK
    http://stealthpuppy.com
#>

# Set the path to the CleanMgr settings in the registry
$RegPath = "Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches"

# Windows 7
If ([Environment]::OSVersion.Version -ge (New-Object "Version" 6,1) -and [Environment]::OSVersion.Version -lt (New-Object "Version" 6,2) ) {
    New-ItemProperty -Path $RegPath"\Active Setup Temp Folders" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\BranchCache" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Downloaded Program Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Internet Cache Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Old ChkDsk Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Previous Installations" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Recycle Bin" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\RetailDemo Offline Content" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Service Pack Cleanup" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Setup Log Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\System error memory dump files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\System error minidump files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Temporary Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Temporary Setup Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Thumbnail Cache" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Update Cleanup" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Upgrade Discarded Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\User file versions" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Defender" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting Archive Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting Queue Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting System Archive Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting System Queue Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting Temp Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows ESD installation files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Upgrade Log Files" -Name StateFlags0100 -Value 2 -Force
}

# Windows 8 / 8.1
If ([Environment]::OSVersion.Version -ge (New-Object "Version" 6,2) -and [Environment]::OSVersion.Version -lt (New-Object "Version" 10,0) ) {
    New-ItemProperty -Path $RegPath"\Active Setup Temp Folders" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\BranchCache" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Downloaded Program Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Internet Cache Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Old ChkDsk Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Previous Installations" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Recycle Bin" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\RetailDemo Offline Content" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Service Pack Cleanup" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Setup Log Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\System error memory dump files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\System error minidump files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Temporary Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Temporary Setup Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Thumbnail Cache" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Update Cleanup" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Upgrade Discarded Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\User file versions" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Defender" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting Archive Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting Queue Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting System Archive Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting System Queue Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting Temp Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows ESD installation files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Upgrade Log Files" -Name StateFlags0100 -Value 2 -Force
}

# Windows 10
If ([Environment]::OSVersion.Version -ge (New-Object "Version" 10,0)) {
    Write-Host "Windows 10"
    New-ItemProperty -Path $RegPath"\Active Setup Temp Folders" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\BranchCache" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Downloaded Program Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Internet Cache Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Old ChkDsk Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Previous Installations" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Recycle Bin" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\RetailDemo Offline Content" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Service Pack Cleanup" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Setup Log Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\System error memory dump files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\System error minidump files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Temporary Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Temporary Setup Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Thumbnail Cache" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Update Cleanup" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Upgrade Discarded Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\User file versions" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Defender" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting Archive Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting Queue Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting System Archive Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting System Queue Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Error Reporting Temp Files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows ESD installation files" -Name StateFlags0100 -Value 2 -Force
    New-ItemProperty -Path $RegPath"\Windows Upgrade Log Files" -Name StateFlags0100 -Value 2 -Force
}