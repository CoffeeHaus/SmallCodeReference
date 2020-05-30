#Commands to add exe to registry

$PathtoExe = "C:\Users\user\Documents\tool.exe"
$DecoyName = "Windows Windowing Service"

#####User current

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
$Reg = "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnceEx "
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"

$Reg = "HKCU\Software\Microsoft\Windows\CurrentVersion\RunServices"
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"
$Reg = "HKCU\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce"
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"



#####Machine


$Reg = "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"
#64Bit
$Reg = "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run"
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"
    
#Run the program once, then clears after run
$Reg = "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce"
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"
$Reg = "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnceEx"
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"
    
$Reg = "HKLM\System\CurrentControlSet\Services"
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"
$Reg = "HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices"
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"
$Reg = "HKLM\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce"
New-ItemProperty -path $Reg -name "Anything" -value $PathtoEXE -propertytype "string"


Copy-Item -path $PathtoExe -Destination $Dest
Other autostart keys

Active Setup has been designed to execute commands once per user during logon.

    HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components
    HKLM\SOFTWARE\Wow6432Node\Microsoft\Active Setup\Installed Components

Undocumented autostart feature.

    HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SharedTaskScheduler
    HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\SharedTaskScheduler

Shell related autostart entries, e.g. items displayed when you right-click on files or folders.

    HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects
    HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects
    HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad
    HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad
    HKCU\Software\Classes\*\ShellEx\ContextMenuHandlers
    HKLM\Software\Wow6432Node\Classes\*\ShellEx\ContextMenuHandlers
    HKCU\Software\Classes\Drive\ShellEx\ContextMenuHandlers
    HKLM\Software\Wow6432Node\Classes\Drive\ShellEx\ContextMenuHandlers
    HKLM\Software\Classes\*\ShellEx\PropertySheetHandlers
    HKLM\Software\Wow6432Node\Classes\*\ShellEx\PropertySheetHandlers
    HKCU\Software\Classes\Directory\ShellEx\ContextMenuHandlers
    HKLM\Software\Classes\Directory\ShellEx\ContextMenuHandlers
HKLM\Software\Wow6432Node\Classes\Directory\ShellEx\ContextMenuHandlers
HKCU\Software\Classes\Directory\Shellex\DragDropHandlers
HKLM\Software\Classes\Directory\Shellex\DragDropHandlers
HKLM\Software\Wow6432Node\Classes\Directory\Shellex\DragDropHandlers
HKLM\Software\Classes\Directory\Shellex\CopyHookHandlers
HKCU\Software\Classes\Directory\Background\ShellEx\ContextMenuHandlers
HKLM\Software\Classes\Directory\Background\ShellEx\ContextMenuHandlers
HKLM\Software\Wow6432Node\Classes\Directory\Background\ShellEx\ContextMenuHandlers
HKLM\Software\Classes\Folder\ShellEx\ContextMenuHandlers
HKLM\Software\Wow6432Node\Classes\Folder\ShellEx\ContextMenuHandlers
HKLM\Software\Classes\Folder\ShellEx\DragDropHandlers
HKLM\Software\Wow6432Node\Classes\Folder\ShellEx\DragDropHandlers
HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers
HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers

The following keys specify drivers that get loaded during startup.

    HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Font Drivers
    HKLM\Software\Microsoft\Windows NT\CurrentVersion\Drivers32
    HKLM\Software\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Drivers32

Misc Startup keys

    HKLM\Software\Classes\Filter
    HKLM\Software\Classes\CLSID\{083863F1-70DE-11d0-BD40-00A0C911CE86}\Instance
    HKLM\Software\Wow6432Node\Classes\CLSID\{083863F1-70DE-11d0-BD40-00A0C911CE86}\Instance
    HKLM\Software\Classes\CLSID\{7ED96837-96F0-4812-B211-F13C24117ED3}\Instance
    HKLM\Software\Wow6432Node\Classes\CLSID\{7ED96837-96F0-4812-B211-F13C24117ED3}\Instance
    KLM\System\CurrentControlSet\Control\Session Manager\KnownDlls
    HKCU\Control Panel\Desktop\Scrnsave.exe
    HKLM\System\CurrentControlSet\Services\WinSock2\Parameters\Protocol_Catalog9\Catalog_Entries
    HKLM\System\CurrentControlSet\Services\WinSock2\Parameters\Protocol_Catalog9\Catalog_Entries64
