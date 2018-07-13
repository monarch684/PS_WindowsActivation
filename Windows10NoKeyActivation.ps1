﻿<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2016 v5.2.127
	 Created on:   	6/11/2018 11:43 AM
	 Created by:   	Joseph Monarch
	 Organization: 	Christian Technologies Consultants
	 Filename:     	Windows10Activation.ps1
	 License:		GPL-3.0-or-later
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


# SIG # Begin signature block
# MIITuQYJKoZIhvcNAQcCoIITqjCCE6YCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUYb6eBCD1Wzno+NTv6Mp2SYya
# SIWggg6EMIIEFDCCAvygAwIBAgILBAAAAAABL07hUtcwDQYJKoZIhvcNAQEFBQAw
# VzELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExEDAOBgNV
# BAsTB1Jvb3QgQ0ExGzAZBgNVBAMTEkdsb2JhbFNpZ24gUm9vdCBDQTAeFw0xMTA0
# MTMxMDAwMDBaFw0yODAxMjgxMjAwMDBaMFIxCzAJBgNVBAYTAkJFMRkwFwYDVQQK
# ExBHbG9iYWxTaWduIG52LXNhMSgwJgYDVQQDEx9HbG9iYWxTaWduIFRpbWVzdGFt
# cGluZyBDQSAtIEcyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlO9l
# +LVXn6BTDTQG6wkft0cYasvwW+T/J6U00feJGr+esc0SQW5m1IGghYtkWkYvmaCN
# d7HivFzdItdqZ9C76Mp03otPDbBS5ZBb60cO8eefnAuQZT4XljBFcm05oRc2yrmg
# jBtPCBn2gTGtYRakYua0QJ7D/PuV9vu1LpWBmODvxevYAll4d/eq41JrUJEpxfz3
# zZNl0mBhIvIG+zLdFlH6Dv2KMPAXCae78wSuq5DnbN96qfTvxGInX2+ZbTh0qhGL
# 2t/HFEzphbLswn1KJo/nVrqm4M+SU4B09APsaLJgvIQgAIMboe60dAXBKY5i0Eex
# +vBTzBj5Ljv5cH60JQIDAQABo4HlMIHiMA4GA1UdDwEB/wQEAwIBBjASBgNVHRMB
# Af8ECDAGAQH/AgEAMB0GA1UdDgQWBBRG2D7/3OO+/4Pm9IWbsN1q1hSpwTBHBgNV
# HSAEQDA+MDwGBFUdIAAwNDAyBggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xvYmFs
# c2lnbi5jb20vcmVwb3NpdG9yeS8wMwYDVR0fBCwwKjAooCagJIYiaHR0cDovL2Ny
# bC5nbG9iYWxzaWduLm5ldC9yb290LmNybDAfBgNVHSMEGDAWgBRge2YaRQ2XyolQ
# L30EzTSo//z9SzANBgkqhkiG9w0BAQUFAAOCAQEATl5WkB5GtNlJMfO7FzkoG8IW
# 3f1B3AkFBJtvsqKa1pkuQJkAVbXqP6UgdtOGNNQXzFU6x4Lu76i6vNgGnxVQ380W
# e1I6AtcZGv2v8Hhc4EvFGN86JB7arLipWAQCBzDbsBJe/jG+8ARI9PBw+DpeVoPP
# PfsNvPTF7ZedudTbpSeE4zibi6c1hkQgpDttpGoLoYP9KOva7yj2zIhd+wo7AKvg
# IeviLzVsD440RZfroveZMzV+y5qKu0VN5z+fwtmK+mWybsd+Zf/okuEsMaL3sCc2
# SI8mbzvuTXYfecPlf5Y1vC0OzAGwjn//UYCAp5LUs0RGZIyHTxZjBzFLY7Df8zCC
# BJ8wggOHoAMCAQICEhEh1pmnZJc+8fhCfukZzFNBFDANBgkqhkiG9w0BAQUFADBS
# MQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTEoMCYGA1UE
# AxMfR2xvYmFsU2lnbiBUaW1lc3RhbXBpbmcgQ0EgLSBHMjAeFw0xNjA1MjQwMDAw
# MDBaFw0yNzA2MjQwMDAwMDBaMGAxCzAJBgNVBAYTAlNHMR8wHQYDVQQKExZHTU8g
# R2xvYmFsU2lnbiBQdGUgTHRkMTAwLgYDVQQDEydHbG9iYWxTaWduIFRTQSBmb3Ig
# TVMgQXV0aGVudGljb2RlIC0gRzIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
# AoIBAQCwF66i07YEMFYeWA+x7VWk1lTL2PZzOuxdXqsl/Tal+oTDYUDFRrVZUjtC
# oi5fE2IQqVvmc9aSJbF9I+MGs4c6DkPw1wCJU6IRMVIobl1AcjzyCXenSZKX1GyQ
# oHan/bjcs53yB2AsT1iYAGvTFVTg+t3/gCxfGKaY/9Sr7KFFWbIub2Jd4NkZrItX
# nKgmK9kXpRDSRwgacCwzi39ogCq1oV1r3Y0CAikDqnw3u7spTj1Tk7Om+o/SWJMV
# TLktq4CjoyX7r/cIZLB6RA9cENdfYTeqTmvT0lMlnYJz+iz5crCpGTkqUPqp0Dw6
# yuhb7/VfUfT5CtmXNd5qheYjBEKvAgMBAAGjggFfMIIBWzAOBgNVHQ8BAf8EBAMC
# B4AwTAYDVR0gBEUwQzBBBgkrBgEEAaAyAR4wNDAyBggrBgEFBQcCARYmaHR0cHM6
# Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADAWBgNV
# HSUBAf8EDDAKBggrBgEFBQcDCDBCBgNVHR8EOzA5MDegNaAzhjFodHRwOi8vY3Js
# Lmdsb2JhbHNpZ24uY29tL2dzL2dzdGltZXN0YW1waW5nZzIuY3JsMFQGCCsGAQUF
# BwEBBEgwRjBEBggrBgEFBQcwAoY4aHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNv
# bS9jYWNlcnQvZ3N0aW1lc3RhbXBpbmdnMi5jcnQwHQYDVR0OBBYEFNSihEo4Whh/
# uk8wUL2d1XqH1gn3MB8GA1UdIwQYMBaAFEbYPv/c477/g+b0hZuw3WrWFKnBMA0G
# CSqGSIb3DQEBBQUAA4IBAQCPqRqRbQSmNyAOg5beI9Nrbh9u3WQ9aCEitfhHNmmO
# 4aVFxySiIrcpCcxUWq7GvM1jjrM9UEjltMyuzZKNniiLE0oRqr2j79OyNvy0oXK/
# bZdjeYxEvHAvfvO83YJTqxr26/ocl7y2N5ykHDC8q7wtRzbfkiAD6HHGWPZ1BZo0
# 8AtZWoJENKqA5C+E9kddlsm2ysqdt6a65FDT1De4uiAO0NOSKlvEWbuhbds8zkSd
# wTgqreONvc0JdxoQvmcKAjZkiLmzGybu555gxEaovGEzbM9OuZy5avCfN/61PU+a
# 003/3iCOTpem/Z8JvE3KGHbJsE2FUPKA0h0G9VgEB7EYMIIFxTCCBK2gAwIBAgIT
# IAAAAAOPrJNDIsNHJQAAAAAAAzANBgkqhkiG9w0BAQsFADBBMRUwEwYKCZImiZPy
# LGQBGRYFbG9jYWwxEzARBgoJkiaJk/IsZAEZFgNhYXAxEzARBgNVBAMTCmFhcC1E
# QzEtQ0EwHhcNMTcxMDEwMTUyNTEwWhcNMTgxMDEwMTUyNTEwWjB7MRUwEwYKCZIm
# iZPyLGQBGRYFbG9jYWwxEzARBgoJkiaJk/IsZAEZFgNhYXAxFjAUBgNVBAsTDVVz
# ZXJzLU5ldHdvcmsxDDAKBgNVBAsTA0FBUDEOMAwGA1UECxMFVXNlcnMxFzAVBgNV
# BAMTDkpvc2VwaCBNb25hcmNoMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC
# AQEArGPnoJoORmZpd6zOObox46n+sKOdnUYCuvxX6weMskBE6qzqQXBJ/6Df3efA
# xCPEc/jK40aCJr3VS8EGOB5TdZCeswdqOrjmiUdLn3tnpnDYsu4l9Z9ZlSiMa5Py
# YEyoYmlyGx78IV2708/6xM9EVxKidZhlrkhTtTdLS6LXJFwxqpkCq2kwn7JkVTlv
# 5Exq+gb5o08ASlJeRlspl0uyc9uRJ64g6F4VffkTuMr3QeiAGds5cC1ROtjV35OC
# JQfOAtI4PIkuT5bb/Xh7Yj0Xyv2yg18OZYkXjtjSevel3gbNd0tbaywUZE+1nWCY
# 3VG40tLyWzUMgQVm4ehLKwXPyQIDAQABo4ICejCCAnYwOwYJKwYBBAGCNxUHBC4w
# LAYkKwYBBAGCNxUI/+1gge35J4KplS/5umbR/RyBaITAlQuF8+g+AgFkAgEDMBMG
# A1UdJQQMMAoGCCsGAQUFBwMDMA4GA1UdDwEB/wQEAwIHgDAbBgkrBgEEAYI3FQoE
# DjAMMAoGCCsGAQUFBwMDMB0GA1UdDgQWBBSi5UluTXsdbUkywrCOtAl97Jgn4jAf
# BgNVHSMEGDAWgBQz3D9mzZMaEdN9geXrYlxIfK2z1DCBwgYDVR0fBIG6MIG3MIG0
# oIGxoIGuhoGrbGRhcDovLy9DTj1hYXAtREMxLUNBLENOPURDMSxDTj1DRFAsQ049
# UHVibGljJTIwS2V5JTIwU2VydmljZXMsQ049U2VydmljZXMsQ049Q29uZmlndXJh
# dGlvbixEQz1hYXAsREM9bG9jYWw/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdD9i
# YXNlP29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlvblBvaW50MIG6BggrBgEFBQcB
# AQSBrTCBqjCBpwYIKwYBBQUHMAKGgZpsZGFwOi8vL0NOPWFhcC1EQzEtQ0EsQ049
# QUlBLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNv
# bmZpZ3VyYXRpb24sREM9YWFwLERDPWxvY2FsP2NBQ2VydGlmaWNhdGU/YmFzZT9v
# YmplY3RDbGFzcz1jZXJ0aWZpY2F0aW9uQXV0aG9yaXR5MDMGA1UdEQQsMCqgKAYK
# KwYBBAGCNxQCA6AaDBhqb3NlcGgubW9uYXJjaEBhYXAubG9jYWwwDQYJKoZIhvcN
# AQELBQADggEBAJ1Upa1kBKhPdOCqPuS99oL7wsBJH7Kx/QsL6tIEwcyNdDqfK3Bi
# UFwWl3tb2UI01vqF73fw3Jyf8/aoZ5H+Cctg5s7JS0cELmKfoCbzObG1xO8ZjU2W
# 1zvlgjhV++URcWQi4R9ivxlExoeSnLxjTZhGGar/1ODTX0uFsZLaajY7dXBvxKsC
# VUCk/+DnCdUnfvNz0Rh7C3oc+fVc/FsmCz4bmIcSrQy33hMKx/dkbfFgGq340YiY
# VRD53A/3RYCxFQ1TMsfN/TmKPyJlkpWDOnbCIzJRRNX2+YxuAO0kwXipP9QtSqZ1
# lGx7T1fLZ4nWnhqNU4B0NkgjEIRwE3ej+fExggSfMIIEmwIBATBYMEExFTATBgoJ
# kiaJk/IsZAEZFgVsb2NhbDETMBEGCgmSJomT8ixkARkWA2FhcDETMBEGA1UEAxMK
# YWFwLURDMS1DQQITIAAAAAOPrJNDIsNHJQAAAAAAAzAJBgUrDgMCGgUAoHgwGAYK
# KwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIB
# BDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQU
# 6zh/+7qo24A8fCSbANZIImenD1swDQYJKoZIhvcNAQEBBQAEggEAPkxy7FCH+t8s
# nyhEe4hK3Fd/g9U+ZlPuYgs6aV/G5beoukaoFrVFu+AiM1yGf2hKUY4YVCG9aUfG
# 8kNOX+V1twPkJdUIxmSlnn5E1ttoDaoVL5LQv1tXLpdxAU3FiW7KXGHP1lJL1y+j
# eRT5J2s/MUU1Nd58iXGS6enDZg+0C9WEKRtBq4Td5LEWv0S6kMPq5HJR/ps0fJiL
# PYRewfOZyRn8F9S1QCz3izY2Cgb2Y1YfZqLAfInHSt/IrNdvnLaQij4B/JnBXWbX
# FIUoKaG3gz5DmeWSAlYfWTB7muTcSpe+ZpmdhlwC3qEwIjxYM5Q3NAuKb9xJvtbY
# mOz7H0gaVKGCAqIwggKeBgkqhkiG9w0BCQYxggKPMIICiwIBATBoMFIxCzAJBgNV
# BAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSgwJgYDVQQDEx9HbG9i
# YWxTaWduIFRpbWVzdGFtcGluZyBDQSAtIEcyAhIRIdaZp2SXPvH4Qn7pGcxTQRQw
# CQYFKw4DAhoFAKCB/TAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3
# DQEJBTEPFw0xODA3MTMyMDU2MjdaMCMGCSqGSIb3DQEJBDEWBBQVxx4j6YRHM2Ca
# 8XNG2zN5Eys22TCBnQYLKoZIhvcNAQkQAgwxgY0wgYowgYcwgYQEFGO4L6th9YOQ
# lpUFCwAknFApM+x5MGwwVqRUMFIxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9i
# YWxTaWduIG52LXNhMSgwJgYDVQQDEx9HbG9iYWxTaWduIFRpbWVzdGFtcGluZyBD
# QSAtIEcyAhIRIdaZp2SXPvH4Qn7pGcxTQRQwDQYJKoZIhvcNAQEBBQAEggEAF5VI
# 49JWjd8+AWyMbDk/k/iJh7pKZjpTZq1s25QiMDkZYblj8ZiXUC7j+OKMK1+QYJrQ
# aoi4CYtc4xr5387D+eRlnsJnO2uPDAf00pIs+Lf+R9H8mjPddfYYLm5UDzc9M8z/
# UEmSLinRNNjaedJwv7UuRwRTxD8zHR+lMjPUgCkILgYeW7f5hJtYio2Onw7KukAQ
# ozd1qoYWfW0XTAiDKCkFiOgeSufWTe3kpGpctVUJhGOZaCzl47Ae8zikXvIxMvqO
# HqzTNI9KqtV0iFRCFJnnf2I30imdst+g+fOjelmGiGPXAs3ko7Q8w+3kxjuRCDRF
# FvpypSCXeGLACLMjHw==
# SIG # End signature block