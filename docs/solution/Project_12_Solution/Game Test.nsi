############################################################################################
#      NSIS Installation Script created by NSIS Quick Setup Script Generator v1.09.18
#               Entirely Edited with NullSoft Scriptable Installation System                
#              by Vlasis K. Barkas aka Red Wine red_wine@freemail.gr Sep 2006               
############################################################################################

!define APP_NAME "Game Test"
!define COMP_NAME "Arnau Bonada"
!define WEB_SITE "https://arnaubonada.github.io/Game-Installer-Creation/"
!define VERSION "01.00.00.00"
!define COPYRIGHT "Arnau Bonada © 2021"
!define DESCRIPTION "Game"
!define LICENSE_TXT "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\LICENSE.txt"
!define INSTALLER_NAME "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\GameTest_setup.exe"
!define MAIN_APP_EXE "Project_12_Solution.exe"
!define INSTALL_TYPE "SetShellVarContext all"
!define REG_ROOT "HKLM"
!define REG_APP_PATH "Software\Microsoft\Windows\CurrentVersion\App Paths\${MAIN_APP_EXE}"
!define UNINSTALL_PATH "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}"

!define REG_START_MENU "Start Menu Folder"

var SM_Folder

######################################################################

VIProductVersion  "${VERSION}"
VIAddVersionKey "ProductName"  "${APP_NAME}"
VIAddVersionKey "CompanyName"  "${COMP_NAME}"
VIAddVersionKey "LegalCopyright"  "${COPYRIGHT}"
VIAddVersionKey "FileDescription"  "${DESCRIPTION}"
VIAddVersionKey "FileVersion"  "${VERSION}"

######################################################################

SetCompressor ZLIB
Name "${APP_NAME}"
Caption "${APP_NAME}"
OutFile "${INSTALLER_NAME}"
BrandingText "${APP_NAME}"
XPStyle on
InstallDirRegKey "${REG_ROOT}" "${REG_APP_PATH}" ""
InstallDir "$PROGRAMFILES\Game Test"

######################################################################

!include "MUI.nsh"

!define MUI_ICON "LogoUPC.ico"

!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_BITMAP "LogoCITM.bmp"

!define MUI_ABORTWARNING
!define MUI_UNABORTWARNING

!insertmacro MUI_PAGE_WELCOME

!ifdef LICENSE_TXT
!insertmacro MUI_PAGE_LICENSE "${LICENSE_TXT}"
!endif

!ifdef REG_START_MENU
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "Game Test"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${REG_ROOT}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${UNINSTALL_PATH}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${REG_START_MENU}"
!insertmacro MUI_PAGE_STARTMENU Application $SM_Folder
!endif

!insertmacro MUI_PAGE_INSTFILES

!define MUI_FINISHPAGE_RUN "$INSTDIR\${MAIN_APP_EXE}"
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_UNPAGE_CONFIRM

!insertmacro MUI_UNPAGE_INSTFILES

!insertmacro MUI_UNPAGE_FINISH

!insertmacro MUI_LANGUAGE "English"

######################################################################

Section -MainProgram
${INSTALL_TYPE}
SetOverwrite ifnewer
SetOutPath "$INSTDIR"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\libogg-0.dll"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\libpng16-16.dll"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\libvorbis-0.dll"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\libvorbisfile-3.dll"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Project_12_Solution.exe"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\SDL2.dll"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\SDL2_image.dll"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\SDL2_mixer.dll"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\zlib1.dll"
SetOutPath "$INSTDIR\Assets\Sprites"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Sprites\background.png"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Sprites\enemies.png"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Sprites\LogoUPC.ico"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Sprites\LogoUPC.png"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Sprites\option.png"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Sprites\particles.png"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Sprites\ship.png"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Sprites\startScreen.png"
SetOutPath "$INSTDIR\Assets\Music"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Music\introTitle.ogg"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Music\stage1.ogg"
SetOutPath "$INSTDIR\Assets\Fx"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fx\explosion.wav"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fx\laser.wav"
SetOutPath "$INSTDIR\Assets\Fonts"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\rtype_all_fonts.png"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\rtype_font.png"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\rtype_font3.png"
SetOutPath "$INSTDIR\Assets\Fonts\Others"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\anomaly.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\BlazingStar.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\BlazingStar2.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\bubsy.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\coolspot.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\ddrocr.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\ddrolive.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\ddrsmall.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\ddrtiny.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\dkc2.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\epicpin.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\furyfurries.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\lemblue.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\magic-pockets.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\mario3.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\ontheball-big.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\ontheball.bmp"
File "C:\Users\ARNAU\Desktop\Project_12_Solution\Project_12_Solution\Game\Assets\Fonts\Others\xenon2.bmp"
SectionEnd

######################################################################

Section -Icons_Reg
SetOutPath "$INSTDIR"
WriteUninstaller "$INSTDIR\uninstall.exe"

!ifdef REG_START_MENU
!insertmacro MUI_STARTMENU_WRITE_BEGIN Application
CreateDirectory "$SMPROGRAMS\$SM_Folder"
CreateShortCut "$SMPROGRAMS\$SM_Folder\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$DESKTOP\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$SMPROGRAMS\$SM_Folder\Uninstall ${APP_NAME}.lnk" "$INSTDIR\uninstall.exe"

!ifdef WEB_SITE
WriteIniStr "$INSTDIR\${APP_NAME} website.url" "InternetShortcut" "URL" "${WEB_SITE}"
CreateShortCut "$SMPROGRAMS\$SM_Folder\${APP_NAME} Website.lnk" "$INSTDIR\${APP_NAME} website.url"
!endif
!insertmacro MUI_STARTMENU_WRITE_END
!endif

!ifndef REG_START_MENU
CreateDirectory "$SMPROGRAMS\Game Test"
CreateShortCut "$SMPROGRAMS\Game Test\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$DESKTOP\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$SMPROGRAMS\Game Test\Uninstall ${APP_NAME}.lnk" "$INSTDIR\uninstall.exe"

!ifdef WEB_SITE
WriteIniStr "$INSTDIR\${APP_NAME} website.url" "InternetShortcut" "URL" "${WEB_SITE}"
CreateShortCut "$SMPROGRAMS\Game Test\${APP_NAME} Website.lnk" "$INSTDIR\${APP_NAME} website.url"
!endif
!endif

WriteRegStr ${REG_ROOT} "${REG_APP_PATH}" "" "$INSTDIR\${MAIN_APP_EXE}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayName" "${APP_NAME}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "UninstallString" "$INSTDIR\uninstall.exe"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayIcon" "$INSTDIR\${MAIN_APP_EXE}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayVersion" "${VERSION}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "Publisher" "${COMP_NAME}"

!ifdef WEB_SITE
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "URLInfoAbout" "${WEB_SITE}"
!endif
SectionEnd

######################################################################

Section Uninstall
${INSTALL_TYPE}
Delete "$INSTDIR\libogg-0.dll"
Delete "$INSTDIR\libpng16-16.dll"
Delete "$INSTDIR\libvorbis-0.dll"
Delete "$INSTDIR\libvorbisfile-3.dll"
Delete "$INSTDIR\Project_12_Solution.exe"
Delete "$INSTDIR\SDL2.dll"
Delete "$INSTDIR\SDL2_image.dll"
Delete "$INSTDIR\SDL2_mixer.dll"
Delete "$INSTDIR\zlib1.dll"
Delete "$INSTDIR\Assets\Sprites\background.png"
Delete "$INSTDIR\Assets\Sprites\enemies.png"
Delete "$INSTDIR\Assets\Sprites\LogoUPC.ico"
Delete "$INSTDIR\Assets\Sprites\LogoUPC.png"
Delete "$INSTDIR\Assets\Sprites\option.png"
Delete "$INSTDIR\Assets\Sprites\particles.png"
Delete "$INSTDIR\Assets\Sprites\ship.png"
Delete "$INSTDIR\Assets\Sprites\startScreen.png"
Delete "$INSTDIR\Assets\Music\introTitle.ogg"
Delete "$INSTDIR\Assets\Music\stage1.ogg"
Delete "$INSTDIR\Assets\Fx\explosion.wav"
Delete "$INSTDIR\Assets\Fx\laser.wav"
Delete "$INSTDIR\Assets\Fonts\rtype_all_fonts.png"
Delete "$INSTDIR\Assets\Fonts\rtype_font.png"
Delete "$INSTDIR\Assets\Fonts\rtype_font3.png"
Delete "$INSTDIR\Assets\Fonts\Others\anomaly.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\BlazingStar.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\BlazingStar2.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\bubsy.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\coolspot.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\ddrocr.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\ddrolive.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\ddrsmall.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\ddrtiny.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\dkc2.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\epicpin.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\furyfurries.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\lemblue.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\magic-pockets.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\mario3.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\ontheball-big.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\ontheball.bmp"
Delete "$INSTDIR\Assets\Fonts\Others\xenon2.bmp"
 
RmDir "$INSTDIR\Assets\Fonts\Others"
RmDir "$INSTDIR\Assets\Fonts"
RmDir "$INSTDIR\Assets\Fx"
RmDir "$INSTDIR\Assets\Music"
RmDir "$INSTDIR\Assets\Sprites"
 
Delete "$INSTDIR\uninstall.exe"
!ifdef WEB_SITE
Delete "$INSTDIR\${APP_NAME} website.url"
!endif

RmDir "$INSTDIR"

!ifdef REG_START_MENU
!insertmacro MUI_STARTMENU_GETFOLDER "Application" $SM_Folder
Delete "$SMPROGRAMS\$SM_Folder\${APP_NAME}.lnk"
Delete "$SMPROGRAMS\$SM_Folder\Uninstall ${APP_NAME}.lnk"
!ifdef WEB_SITE
Delete "$SMPROGRAMS\$SM_Folder\${APP_NAME} Website.lnk"
!endif
Delete "$DESKTOP\${APP_NAME}.lnk"

RmDir "$SMPROGRAMS\$SM_Folder"
!endif

!ifndef REG_START_MENU
Delete "$SMPROGRAMS\Game Test\${APP_NAME}.lnk"
Delete "$SMPROGRAMS\Game Test\Uninstall ${APP_NAME}.lnk"
!ifdef WEB_SITE
Delete "$SMPROGRAMS\Game Test\${APP_NAME} Website.lnk"
!endif
Delete "$DESKTOP\${APP_NAME}.lnk"

RmDir "$SMPROGRAMS\Game Test"
!endif

DeleteRegKey ${REG_ROOT} "${REG_APP_PATH}"
DeleteRegKey ${REG_ROOT} "${UNINSTALL_PATH}"
SectionEnd

######################################################################

