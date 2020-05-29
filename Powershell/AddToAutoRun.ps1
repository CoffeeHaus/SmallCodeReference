#Commands to add exe to registry

$PathtoEXE = "C:\Users\user\Documents\tool.exe"
$DecoyName = "Windows Windowing Service"

New-ItemProperty -path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -name "Anything" -value $PathtoEXE -propertytype "string"
