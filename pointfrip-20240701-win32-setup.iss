; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{836CDE9C-122C-46E9-B450-8633F9EA575E}
AppName=Pointfrip
AppVersion=20240701
;AppVerName=PF 20240701
AppPublisher=Fpstefan
AppPublisherURL=https://www.github.com/metazip/pointfrip/
AppSupportURL=https://www.github.com/metazip/pointfrip/
AppUpdatesURL=https://www.github.com/metazip/pointfrip/
DefaultDirName=C:\Pointfrip
DefaultGroupName=Pointfrip
OutputDir=C:\Users\web\Desktop\metazip-pointfrip
OutputBaseFilename=pointfrip-20240701-win32-installer
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes

[Registry]
Root: HKCR; Subkey: ".pf"; ValueType: string; ValueName: ""; ValueData: "PFfile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "PFfile"; ValueType: string; ValueName: ""; ValueData: "Pointfrip-Datei"; Flags: uninsdeletekey
Root: HKCR; Subkey: "PFfile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\pointfrip.exe,0"
Root: HKCR; Subkey: "PFfile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\pointfrip.exe"" ""%1"""

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\web\Desktop\PFcom\pointfrip.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\web\Desktop\PFcom\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Pointfrip"; Filename: "{app}\pointfrip.exe"
Name: "{group}\{cm:UninstallProgram,Pointfrip}"; Filename: "{uninstallexe}"
Name: "{group}\Pointfrip Examples"; Filename: "{app}\"
Name: "{group}\Pointfrip Reference"; Filename: "{app}\documents\reference.pdf"
Name: "{group}\Pointfrip Documentation"; Filename: "{app}\documents\documentation.pdf"
Name: "{group}\Pointfrip Quickinfo"; Filename: "{app}\documents\quickinfo.pdf"
Name: "{commondesktop}\Pointfrip"; Filename: "{app}\pointfrip.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\pointfrip.exe"; Description: "{cm:LaunchProgram,Pointfrip}"; Flags: nowait postinstall skipifsilent

