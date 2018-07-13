<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2016 v5.2.127
	 Created on:   	6/11/2018 11:43 AM
	 Created by:   	Joseph Monarch
	 Organization: 	Christian Technologies Consultants
	 Filename:     	Windows10Activation.ps1
	 License:	GPL-3.0-or-later
	===========================================================================
	.DESCRIPTION
		This script will retrieve the Windows Product Key from the BIOS.  After 
		retreival, the product key is set.  Finally, the product key is activated.
#>
$wpk = Get-WmiObject SoftwareLicensingService | Select-Object OA3xOriginalProductKey
$wpk = $wpk.OA3xOriginalProductKey

Write-Host "Activating Windows with Product Key: $wpk"

$activate = Get-WmiObject SoftwareLicensingService
$activate.InstallProductKey($wpk) | Out-Null
$activate.RefreshLicenseStatus() | Out-Null
