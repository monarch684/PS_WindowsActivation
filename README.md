# PS_WindowsActivation
Pulls Windows activation key from MB, applies and activates Windows.

This script only works if a Windows Activation Key has been embedded on the motherboard.  It uses WMI to retrieve the key.  Once it has retireved the key it will attempt to activate the key via WMI Object SoftwareLicensingService.  If it is unable to find the key, the OEM did not embed a Windows Activation Key.

Internet connection is *required* for activation.
