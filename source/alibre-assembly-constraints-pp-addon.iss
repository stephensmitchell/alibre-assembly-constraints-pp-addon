; =========================
; Inno Setup Template (.iss)
; =========================
; Replace all {{PLACEHOLDERS}} with your values.

[Setup]
; Code signing configuration (optional)
; SignTool={{SIGN_TOOL_EXE}}     ; e.g., signtool
; SignedUninstaller={{YES_OR_NO}}

AppName={{APP_NAME}}                                 ; e.g., alibre-assembly-constraints-pp-addon
AppVersion={{APP_VERSION}}                           ; e.g., 1.0.0
AppPublisher={{APP_PUBLISHER}}                       ; e.g., stephensmitchell
AppPublisherURL={{PUBLISHER_URL}}                    ; e.g., na
AppSupportURL={{SUPPORT_URL}}                        ; e.g., na
AppUpdatesURL={{UPDATES_URL}}                        ; e.g., na

DefaultDirName={autopf}\{{INSTALL_FOLDER_NAME}}      ; e.g., alibre-assembly-constraints-pp-addon
DefaultGroupName={{PROGRAM_GROUP_NAME}}              ; e.g., alibre-assembly-constraints-pp-addon
DisableProgramGroupPage={{YES_OR_NO}}                ; e.g., yes
LicenseFile={{LICENSE_FILE}}                         ; e.g., LICENSE.txt (relative or filename)
InfoBeforeFile={{INFO_BEFORE_FILE}}                  ; e.g., README.md
OutputDir={{OUTPUT_DIR}}                             ; e.g., . or builds
OutputBaseFilename={{OUTPUT_BASENAME}}               ; e.g., alibre-assembly-constraints-pp-addon-setup
SetupIconFile={{SETUP_ICON_FILE}}                    ; e.g., logo.ico
Compression={{COMPRESSION}}                          ; e.g., lzma2
SolidCompression={{YES_OR_NO}}                       ; e.g., yes
WizardStyle={{WIZARD_STYLE}}                         ; e.g., modern
ArchitecturesAllowed={{ARCH_ALLOWED}}                ; e.g., x64compatible
ArchitecturesInstallIn64BitMode={{ARCH_INSTALL}}     ; e.g., x64compatible
MinVersion={{MIN_WINDOWS_VERSION}}                   ; e.g., 10.0.19043
AppCopyright={{COPYRIGHT_NOTICE}}                    ; e.g., Copyright © 2025 Your Name
UninstallDisplayName={{UNINSTALL_DISPLAY_NAME}}      ; e.g., Alibre Assembly Constraints PP Addon
UninstallDisplayIcon={app}\{{UNINSTALL_ICON_FILE}}   ; e.g., logo.ico
PrivilegesRequired={{PRIVILEGES}}                    ; e.g., admin
DirExistsWarning={{YES_OR_NO}}                       ; e.g., yes
CreateAppDir={{YES_OR_NO}}                           ; e.g., yes
ShowLanguageDialog={{YES_OR_NO}}                     ; e.g., no

[Languages]
Name: "{{LANG_ID}}"; MessagesFile: "compiler:Default.isl" ; e.g., english

[Files]
; --- Main application files ---
Source: "{{BUILD_DIR}}\{{APP_BASENAME}}.adc"; DestDir: "{app}"; Flags: ignoreversion
Source: "{{BUILD_DIR}}\{{APP_BASENAME}}.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{{BUILD_DIR}}\{{APP_BASENAME}}.pdb"; DestDir: "{app}"; Flags: ignoreversion

; --- IronPython dependencies (optional; remove if not used) ---
Source: "{{BUILD_DIR}}\IronPython.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{{BUILD_DIR}}\IronPython.Modules.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{{BUILD_DIR}}\IronPython.SQLite.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{{BUILD_DIR}}\IronPython.Wpf.dll"; DestDir: "{app}"; Flags: ignoreversion

; --- Microsoft.Scripting dependencies (optional; remove if not used) ---
Source: "{{BUILD_DIR}}\Microsoft.Dynamic.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{{BUILD_DIR}}\Microsoft.Scripting.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{{BUILD_DIR}}\Microsoft.Scripting.Metadata.dll"; DestDir: "{app}"; Flags: ignoreversion

; --- Icon file ---
Source: "{{BUILD_DIR}}\{{APP_ICON_FILE}}"; DestDir: "{app}"; Flags: ignoreversion   ; e.g., logo.ico

; --- Python scripts (optional) ---
Source: "{{BUILD_DIR}}\scripts\{{SETUP_SCRIPT}}"; DestDir: "{app}\scripts"; Flags: ignoreversion  ; e.g., alibre_setup.py
Source: "{{BUILD_DIR}}\scripts\{{TEMPLATE_SCRIPT}}"; DestDir: "{app}\scripts"; Flags: ignoreversion ; e.g., Template.py

[Registry]
; Register the addon/app (customize as needed)
Root: HKLM; Subkey: "{{REG_SUBKEY}}"; ValueType: string; ValueName: {{REG_VALUE_NAME}}; ValueData: "{{REG_VALUE_DATA}}"; Flags: uninsdeletevalue
; e.g.:
; Root: HKLM; Subkey: "Software\Alibre Design Add-Ons"; ValueType: string; ValueName: "AppName"; ValueData: "{app}"

[Icons]
; Program group shortcuts
Name: "{group}\{{SHORTCUT_NAME}}"; Filename: "{app}\{{TARGET_EXE_OR_DLL}}"   ; e.g., alibre-assembly-constraints-pp-addon.dll
Name: "{group}\{cm:UninstallProgram,{{APP_ID_FOR_UNINSTALL}}}"; Filename: "{uninstallexe}"

[Run]
; Add post-installation commands here if needed
; Filename: "{app}\{{POST_INSTALL_EXE}}"; Parameters: "{{ARGS}}"; Flags: nowait runhidden

[UninstallDelete]
; Clean up any generated files or folders if needed
Type: filesandordirs; Name: "{app}"
