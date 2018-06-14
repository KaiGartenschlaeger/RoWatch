EnableExplicit

;- Declare
Enumeration
 #Win_Hide
 #Win_Main
 #Win_Options
 #Win_Contact
 #Win_Log
 #Win_Info
EndEnumeration

Enumeration
 ;Main
 #G_TX_Main_NameT
 #G_TX_Main_NameV
 #G_TX_Main_Time
 #G_TX_Main_BEXPT
 #G_TX_Main_BEXPV
 #G_TX_Main_BEXPPV
 #G_PB_Main_BEXP
 #G_TX_Main_JEXPT
 #G_TX_Main_JEXPV
 #G_TX_Main_JEXPPV
 #G_PB_Main_JEXP
 #G_TX_Main_BaseT
 #G_TX_Main_JobT
 #G_TX_Main_REXPT
 #G_TX_Main_RBEXPV
 #G_TX_Main_RJEXPV
 #G_TX_Main_EXPHT
 #G_TX_Main_BEXPHV
 #G_TX_Main_JEXPHV
 #G_TX_Main_KillsT
 #G_TX_Main_KillsV
 #G_BN_Main_Options
 #G_BN_Main_Reset
 #G_BN_Main_Start
 ;Options
 #G_TX_Options_Adr
 #G_LI_Options_Adr
 #G_TX_Options_Title
 #G_SR_Options_Title
 #G_TX_Options_Refresh
 #G_SR_Options_Refresh
 #G_BN_Options_Refresh
 #G_CH_Options_OnTop
 #G_CH_Options_Sounds
 #G_CH_Options_JobSprite
 #G_CH_options_WThread
 ;Contact
 #G_TX_Contact_Name
 #G_SR_Contact_Name
 #G_TX_Contact_Mail
 #G_SR_Contact_Mail
 #G_SR_Contact_About
 #G_TX_Contact_About
 #G_SR_Contact_Text
 #G_BN_Contact_Cancel
 #G_BN_Contact_Send
 ;Log
 #G_LI_Log_LogView
 ;Info
 #G_IG_Info_Logo
 #G_ED_Info_Text
 #G_BN_Info_Close
EndEnumeration

Enumeration 
 #Menu_PopUp
EndEnumeration

Enumeration 
 #Mnu_SysTray_Show
 #Mnu_SysTray_ROShow
 #Mnu_SysTray_Start
 #Mnu_SysTray_Reset
 #Mnu_SysTray_Contact
 #Mnu_SysTray_Log
 #Mnu_SysTray_Update
 #Mnu_SysTray_Info
 #Mnu_SysTray_End
EndEnumeration

#PrgName =          "ROWatch"
#PrgVers =          100

#MinRefreshTime =   50
#MaxRefreshTime =   5000

#Info =             "{\rtf1\ansi\ansicpg1252\deff0\deflang1031{\fonttbl{\f0\fswiss\fcharset0 Arial;}}" + #CRLF$ + "{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;\red255\green0\blue0;}" + #CRLF$ + "{\*\generator Msftedit 5.41.21.2507;}\viewkind4\uc1\pard\qc\cf1\f0\fs20\par" + #CRLF$ + "Ragnawatch Version \cf0 1.00\par" + "\pard\par" + #CRLF$ + "                 by \cf2 NuffBuff\cf0 , \cf3 Orenda\par" + #CRLF$ + "\par" + #CRLF$ + "\cf1 Changelog:\par" + #CRLF$ + "\par" + "Version 1.00\par" + #CRLF$ + "- First Release\cf0\par" + "}"

#IniFile =          "ROWatch.inf"

#Timer =            0

#Adr_name =  $78CA64
#Adr_hp =    $78C722
#Adr_hpmax = $78BA28
#Adr_sp =    $78C722
#Adr_spmax = $78BA28
#Adr_blvl =  $78BA28
#Adr_jlvl =  $78BA34
#Adr_bexp =  $78BA24
#Adr_bexpn = $78BA30
#Adr_jexp =  $78BAE0
#Adr_jexpn = $78BADC
#Adr_jcls =  $78BA20
#Adr_zeny =  $78BACC
#Adr_state = $764430
#Adr_map =   $764430

Global lWindowEvent.l
Global lEventWindow.l
Global lEventGadget.l
Global lEventMenu.l
Global lEventType.l

Global lStartTime.l

Global lHandle.l
Global lProcess.l
Global lWatch.l
Global lWatchReset.l = 1

Structure Adress
 name.l
 hp.l
 hpmax.l
 sp.l
 spmax.l
 blvl.l
 jlvl.l
 bexp.l
 bexpn.l
 jexp.l
 jexpn.l
 jcls.l
 zeny.l
 state.l
 map.l
EndStructure
Global Adr.Adress

Structure Pref
 title.s       ;Title from RagnarokClient Window
 refreshtr.l   ;Refreshtime to read data
 refreshtg.l   ;Refreshtime to refresh GUI
 magnetic.b    ;Magnetic Windows
 magneticv.l   ;Magnetic Windows Value
 ontop.b       ;Always on top
 sounds.b      ;Sounds
 ssprites.b    ;Show JobSprite
 wthread.l     ;Watch as a Thread
EndStructure
Global Preferences.Pref

Structure Charinfo
 name.s
 hp.l
 hpmax.l
 sp.l
 spmax.l
 blvl.l
 jlvl.l
 bexp.l
 bexpn.l
 jexp.l
 jexpn.l
 jcls.l
 zeny.l
 map.s
 state.s
 
 sbexp.l  ;BaseEXP bei Start
 sjexp.l  ;JobEXP bei Start
EndStructure
Global Charinfo.Charinfo

;JobCls Classes Tables
#MaxJobCls = 75
Structure JCls
 v.l ;Value
 n.s ;Name
EndStructure
Global Dim JobClass.JCls(#MaxJobCls)

JobClass(0)\v  = 0    :JobClass(0)\n  = "Novice"
JobClass(1)\v  = 1    :JobClass(1)\n  = "Swordman"
JobClass(2)\v  = 2    :JobClass(2)\n  = "Mage"
JobClass(3)\v  = 3    :JobClass(3)\n  = "Archer"
JobClass(4)\v  = 4    :JobClass(4)\n  = "Acolyte"
JobClass(5)\v  = 5    :JobClass(5)\n  = "Merchant"
JobClass(6)\v  = 6    :JobClass(6)\n  = "Thief"
JobClass(7)\v  = 7    :JobClass(7)\n  = "Knight"
JobClass(8)\v  = 8    :JobClass(8)\n  = "Priest"
JobClass(9)\v  = 9    :JobClass(9)\n  = "Wizard"
JobClass(10)\v = 10   :JobClass(10)\n = "Blacksmith"
JobClass(11)\v = 11   :JobClass(11)\n = "Hunter"
JobClass(12)\v = 12   :JobClass(12)\n = "Assassin"
JobClass(13)\v = 13   :JobClass(13)\n = "Knight"
JobClass(14)\v = 14   :JobClass(14)\n = "Crusader"
JobClass(15)\v = 15   :JobClass(15)\n = "Monk"
JobClass(16)\v = 16   :JobClass(16)\n = "Sage"
JobClass(17)\v = 17   :JobClass(17)\n = "Rogue"
JobClass(18)\v = 18   :JobClass(18)\n = "Alchemist"
JobClass(19)\v = 19   :JobClass(19)\n = "Bard"
JobClass(20)\v = 20   :JobClass(20)\n = "Dancer"
JobClass(21)\v = 21   :JobClass(21)\n = "Crusader"
JobClass(22)\v = 22   :JobClass(22)\n = "Wedding"
JobClass(23)\v = 23   :JobClass(23)\n = "Super Novice"
JobClass(24)\v = 24   :JobClass(24)\n = "Gunslinger"
JobClass(25)\v = 25   :JobClass(25)\n = "Ninja"
JobClass(26)\v = 26   :JobClass(26)\n = "Xmas"
JobClass(27)\v = 4001 :JobClass(27)\n = "Novice High"
JobClass(28)\v = 4002 :JobClass(28)\n = "Swordman High"
JobClass(29)\v = 4003 :JobClass(29)\n = "Mage High"
JobClass(30)\v = 4004 :JobClass(30)\n = "Archer High"
JobClass(31)\v = 4005 :JobClass(31)\n = "Acolyte High"
JobClass(32)\v = 4006 :JobClass(32)\n = "Merchant High"
JobClass(33)\v = 4007 :JobClass(33)\n = "Thief High"
JobClass(34)\v = 4008 :JobClass(34)\n = "Lord Knight"
JobClass(35)\v = 4009 :JobClass(35)\n = "High Priest"
JobClass(36)\v = 4010 :JobClass(36)\n = "High Wizard"
JobClass(37)\v = 4011 :JobClass(37)\n = "Whitesmith"
JobClass(38)\v = 4012 :JobClass(38)\n = "Sniper"
JobClass(39)\v = 4013 :JobClass(39)\n = "Assassin Cross"
JobClass(40)\v = 4014 :JobClass(40)\n = "Lord Knight"
JobClass(41)\v = 4015 :JobClass(41)\n = "Paladin"
JobClass(42)\v = 4016 :JobClass(42)\n = "Champion"
JobClass(43)\v = 4017 :JobClass(43)\n = "Professor"
JobClass(44)\v = 4018 :JobClass(44)\n = "Stalker"
JobClass(45)\v = 4019 :JobClass(45)\n = "Creator"
JobClass(46)\v = 4020 :JobClass(46)\n = "Clown"
JobClass(47)\v = 4021 :JobClass(47)\n = "Gypsy"
JobClass(48)\v = 4022 :JobClass(48)\n = "Paladin"
JobClass(49)\v = 4023 :JobClass(48)\n = "Baby"
JobClass(50)\v = 4024 :JobClass(48)\n = "Baby Swordman"
JobClass(51)\v = 4025 :JobClass(48)\n = "Baby Mage"
JobClass(52)\v = 4026 :JobClass(48)\n = "Baby Archer"
JobClass(53)\v = 4027 :JobClass(48)\n = "Baby Acolyte"
JobClass(54)\v = 4028 :JobClass(48)\n = "Baby Merchant"
JobClass(55)\v = 4029 :JobClass(48)\n = "Baby Thief"
JobClass(56)\v = 4030 :JobClass(48)\n = "Baby Knight"
JobClass(57)\v = 4031 :JobClass(48)\n = "Baby Priest"
JobClass(58)\v = 4032 :JobClass(48)\n = "Baby Wizard"
JobClass(59)\v = 4033 :JobClass(48)\n = "Baby Blacksmith"
JobClass(60)\v = 4034 :JobClass(48)\n = "Baby Hunter"
JobClass(61)\v = 4035 :JobClass(48)\n = "Baby Assassin"
JobClass(62)\v = 4036 :JobClass(48)\n = "Baby Knight"
JobClass(63)\v = 4037 :JobClass(48)\n = "Baby Crusader"
JobClass(64)\v = 4038 :JobClass(48)\n = "Baby Monk"
JobClass(65)\v = 4039 :JobClass(48)\n = "Baby Sage"
JobClass(66)\v = 4040 :JobClass(48)\n = "Baby Rogue"
JobClass(67)\v = 4041 :JobClass(48)\n = "Baby Alchemist"
JobClass(68)\v = 4042 :JobClass(48)\n = "Baby Bard"
JobClass(69)\v = 4043 :JobClass(48)\n = "Baby Dancer"
JobClass(70)\v = 4044 :JobClass(48)\n = "Baby Crusader"
JobClass(71)\v = 4045 :JobClass(48)\n = "Super Baby"
JobClass(72)\v = 4046 :JobClass(48)\n = "Teakwon"
JobClass(73)\v = 4047 :JobClass(48)\n = "Star Gladiator"
JobClass(74)\v = 4048 :JobClass(48)\n = "Star Gladiator"
JobClass(75)\v = 4049 :JobClass(48)\n = "Soul Linker"

Global *MBString  = AllocateMemory(225)
Global *MBValue   = AllocateMemory(8)

Global hImgList.l = ImageList_LoadImage_(GetModuleHandle_(0), @"#2", 16, #Null, #CLR_DEFAULT, #IMAGE_BITMAP, #LR_CREATEDIBSECTION)
If hImgList = 0
 MessageRequester("Fehler", "ImageList konnte nicht geladen werden", #MB_OK|#MB_ICONERROR): End
EndIf

Global hInfoLogo.l = LoadImage_(GetModuleHandle_(0), "#3", #IMAGE_ICON, 233, 100, #LR_DEFAULTCOLOR)

;- ProceduresMain
Macro MsgBox_Error(Text, Title = "Fehler")
 MessageRequester(Title, Text, #MB_OK|#MB_ICONERROR)
EndMacro

Macro MsgBox_Exclamation(Text, Title = "Hinweis")
 MessageRequester(Title, Text, #MB_OK|#MB_ICONEXCLAMATION)
EndMacro

Macro MsgBox_Information(Text, Title = "Information")
 MessageRequester(Title, Text, #MB_OK|#MB_ICONINFORMATION)
EndMacro

Procedure.s FormatTimeGetTime(Time)
 Protected sek.l, min.l, std.l, rmin.l, rsek.l

 sek =  Time / 1000
 min =  sek / 60
 std =  min / 60

 rsek = sek - (min * 60)
 rmin = min - (std * 60)

 ProcedureReturn RSet(Str(std), 2, "0") + ":" + RSet(Str(rmin), 2, "0") + ":" + RSet(Str(rsek), 2, "0")
EndProcedure

Procedure.s FormatPointedSize(Size.q)
 If Size > 999
  Protected lNext.l, sSize.s = StrQ(Size), sTemp.s, sResult.s
  For lNext = 1 To Len(sSize)
   sResult = Mid(sSize, Len(sSize) - lNext + 1, 1)
   If lNext % 3 = 0 And lNext <> Len(sSize)
    sResult = "." + sResult
   EndIf
   sTemp = sResult + sTemp
  Next
  ProcedureReturn sTemp
 Else
  ProcedureReturn StrQ(Size)
 EndIf
EndProcedure

Procedure.s Window_GetTitle(Window)
 If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
  If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
  Protected Title$ = Space(GetWindowTextLength_(Window))
  GetWindowText_(Window, @Title$, GetWindowTextLength_(Window) + 1)
  ProcedureReturn Title$
 EndIf
EndProcedure

Procedure.l Window_AlwaysOnTop(Window, Bool)
 If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
  If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
  If Bool <> 0: Bool = 1: EndIf
  Select Bool
   Case 0: ProcedureReturn SetWindowPos_(Window, #HWND_NOTOPMOST, 0, 0, 0, 0, #SWP_NOACTIVATE|#SWP_NOSIZE|#SWP_NOMOVE)
   Case 1: ProcedureReturn SetWindowPos_(Window, #HWND_TOPMOST, 0, 0, 0, 0, #SWP_NOACTIVATE|#SWP_NOSIZE|#SWP_NOMOVE)
  EndSelect
 EndIf
EndProcedure

Procedure.l Window_GetWidth(Window)
 If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
  If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
  Protected W.RECT
  GetWindowRect_(Window, @W)
  ProcedureReturn W\right - W\left
 EndIf
EndProcedure

Procedure.l Window_GetHeight(Window)
 If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
  If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
  Protected W.RECT
  GetWindowRect_(Window, @W)
  ProcedureReturn W\bottom - W\top
 EndIf
EndProcedure

Procedure.l Window_GetClientWidth(Window)
 If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
  If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
  Protected C.RECT
  GetClientRect_(Window, @C)
  ProcedureReturn C\right - C\left
 EndIf
EndProcedure

Procedure.s ExePath()
 Protected Path$
 Path$ = Space(#MAX_PATH)
 GetModuleFileName_(0, @Path$, #MAX_PATH)
 ProcedureReturn GetPathPart(Path$)
EndProcedure

Procedure.s ReadFixedString(File, Length)
 Protected result.s, memory.l
 If IsFile(File) <> #False And Length > 0
  memory = AllocateMemory(Length)
  If memory <> #False
   ReadData(File, memory, Length)
   result = PeekS(memory, Length)
   FreeMemory(memory)
   ProcedureReturn result
  EndIf
 EndIf
EndProcedure

;- WinHide
If OpenWindow(#Win_Hide, 0, 0, 0, 0, "ROWatch - MainHide", #PB_Window_Invisible)
 DisableWindow(#Win_Hide, 1)
Else
 MsgBox_Error("Fenster 'Hide' konnte nicht erstellt werden"): End
EndIf
;- WinMain
If OpenWindow(#Win_Main, -1, -1, 410, 135, #PrgName + " " + StrF(#PrgVers/100, 2), #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Hide))
 If CreateGadgetList(WindowID(#Win_Main))
  TextGadget(#G_TX_Main_NameT, 5, 5, 100, 15, "Character:")
  TextGadget(#G_TX_Main_NameV, 105, 5, 220, 15, "")
  TextGadget(#G_TX_Main_Time, 325, 5, 80, 15, "", #PB_Text_Center)
  TextGadget(#G_TX_Main_BEXPT, 5, 30, 100, 15, "BaseEXP:")
  TextGadget(#G_TX_Main_BEXPV, 105, 20, 165, 15, "", #PB_Text_Right)
  TextGadget(#G_TX_Main_BEXPPV, 275, 20, 50, 15, "", #PB_Text_Right)
  ProgressBarGadget(#G_PB_Main_BEXP, 105, 35, 220, 10, 0, 100)
  TextGadget(#G_TX_Main_JEXPT, 5, 55, 100, 15, "JobEXP:")
  TextGadget(#G_TX_Main_JEXPV, 105, 45, 165, 15, "", #PB_Text_Right)
  TextGadget(#G_TX_Main_JEXPPV, 275, 45, 50, 15, "", #PB_Text_Right)
  ProgressBarGadget(#G_PB_Main_JEXP, 105, 60, 220, 10, 0, 100)
  TextGadget(#G_TX_Main_BaseT, 105, 70, 110, 15, "Base", #PB_Text_Center)
  TextGadget(#G_TX_Main_JobT, 215, 70, 110, 15, "Job", #PB_Text_Center)
  TextGadget(#G_TX_Main_REXPT, 5, 85, 100, 15, "Erhaltene EXP")
  TextGadget(#G_TX_Main_RBEXPV, 105, 85, 110, 15, "", #PB_Text_Center)
  TextGadget(#G_TX_Main_RJEXPV, 215, 85, 110, 15, "", #PB_Text_Center)
  TextGadget(#G_TX_Main_EXPHT, 5, 100, 100, 15, "EXP/h")
  TextGadget(#G_TX_Main_BEXPHV, 105, 100, 110, 15, "", #PB_Text_Center)
  TextGadget(#G_TX_Main_JEXPHV, 215, 100, 110, 15, "", #PB_Text_Center)
  TextGadget(#G_TX_Main_KillsT, 5, 115, 100, 15, "Getötete Gegner")
  TextGadget(#G_TX_Main_KillsV, 105, 115, 110, 15, "", #PB_Text_Center)
  ButtonGadget(#G_BN_Main_Options, 330, 50, 75, 24, "Optionen")
  ButtonGadget(#G_BN_Main_Reset, 330, 80, 75, 24, "Reset")
  ButtonGadget(#G_BN_Main_Start, 330, 105, 75, 24, "Start")
 Else
  MsgBox_Error("GadgetList 'Main' konnte nicht erstellt werden"): End
 EndIf
 If CreatePopupImageMenu(#Menu_PopUp, WindowID(#Win_Main))
  MenuItem(#Mnu_SysTray_Show, "Zeigen")
  MenuItem(#Mnu_SysTray_ROShow, "Client verstecken")
  MenuBar()
  MenuItem(#Mnu_SysTray_Start, "Start")
  MenuItem(#Mnu_SysTray_Reset, "Reset")
  MenuBar()
  MenuItem(#Mnu_SysTray_Log, "Log", ImageList_GetIcon_(hImgList, 2, 0))
  MenuBar()
  MenuItem(#Mnu_SysTray_Update, "Update", ImageList_GetIcon_(hImgList, 4, 0))
  MenuItem(#Mnu_SysTray_Contact, "Kontakt", ImageList_GetIcon_(hImgList, 1, 0))
  MenuItem(#Mnu_SysTray_Info, "Info", ImageList_GetIcon_(hImgList, 3, 0))
  MenuBar()
  MenuItem(#Mnu_SysTray_End, "Beenden", ImageList_GetIcon_(hImgList, 5, 0))
 Else
  MsgBox_Error("PopUp Menu 'SysTray' konnte nicht erstellt werden"): End
 EndIf
 Global lWndID_Main.l = WindowID(#Win_Main)
 DisableWindow(#Win_Main, 1)
Else
 MsgBox_Error("Fenster 'Main' konnte nicht erstellt werden"): End
EndIf
;- WinOptions
If OpenWindow(#Win_Options, -1, -1, 435, 155, "Optionen", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Main))
 If CreateGadgetList(WindowID(#Win_Options))
  TextGadget(#G_TX_Options_Adr, 5, 5, 220, 15, "Adressen")
  ListIconGadget(#G_LI_Options_Adr, 5, 20, 220, 130, "Type", 100, #LVS_NOSORTHEADER|#LVS_NOCOLUMNHEADER|#PB_ListIcon_FullRowSelect|#PB_ListIcon_GridLines)
   AddGadgetColumn(#G_LI_Options_Adr, 1, "Wert", 10)
   AddGadgetItem(#G_LI_Options_Adr, -1, "Name")
   AddGadgetItem(#G_LI_Options_Adr, -1, "BaseLevel")
   AddGadgetItem(#G_LI_Options_Adr, -1, "JobLevel")
   AddGadgetItem(#G_LI_Options_Adr, -1, "BaseEXP")
   AddGadgetItem(#G_LI_Options_Adr, -1, "BaseEXP Next")
   AddGadgetItem(#G_LI_Options_Adr, -1, "JobEXP")
   AddGadgetItem(#G_LI_Options_Adr, -1, "JobEXP Next")
   AddGadgetItem(#G_LI_Options_Adr, -1, "Beruf")
   AddGadgetItem(#G_LI_Options_Adr, -1, "Zeny")
   AddGadgetItem(#G_LI_Options_Adr, -1, "State")
   AddGadgetItem(#G_LI_Options_Adr, -1, "Map")
   SetGadgetItemAttribute(#G_LI_Options_Adr, -1, #PB_ListIcon_ColumnWidth, Window_GetClientWidth(GadgetID(#G_LI_Options_Adr)) - GetGadgetItemAttribute(#G_LI_Options_Adr, -1, #PB_ListIcon_ColumnWidth, 0), 1)
  TextGadget(#G_TX_Options_Title, 230, 5, 200, 15, "Fenstertitel (Ragnarok Client)")
  StringGadget(#G_SR_Options_Title, 230, 20, 200, 20, "Ragnarok")
  TextGadget(#G_TX_Options_Refresh, 230, 45, 150, 15, "Refreshtime (in ms)")
  StringGadget(#G_SR_Options_Refresh, 230, 60, 150, 20, "")
  ButtonGadget(#G_BN_Options_Refresh, 385, 60, 45, 20, "Set")
  CheckBoxGadget(#G_CH_Options_OnTop, 230, 85, 150, 15, "Immer im Vordergrund")
  CheckBoxGadget(#G_CH_Options_Sounds, 230, 100, 150, 15, "Geräusche")
  CheckBoxGadget(#G_CH_Options_JobSprite, 230, 115, 150, 15, "Berufesprites anzeigen")
  CheckBoxGadget(#G_CH_options_WThread, 230, 130, 150, 15, "Thread benutzen")
 Else
  MsgBox_Error("GadgetList 'Options' konnte nicht erstellt werden"): End
 EndIf
 Global lWndID_Options.l = WindowID(#Win_Options)
 DisableWindow(#Win_Options, 1)
Else
 MsgBox_Error("Fenster 'Options' konnte nicht erstellt werden"): End
EndIf
;- WinContact
If OpenWindow(#Win_Contact, -1, -1, 360, 340, "Kontakt", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Main))
 If CreateGadgetList(WindowID(#Win_Contact))
  TextGadget(#G_TX_Contact_Name, 5, 5, 350, 15, "Name:")
  StringGadget(#G_SR_Contact_Name, 5, 20, 350, 20, "")
  TextGadget(#G_TX_Contact_Mail, 5, 45, 350, 15, "eMail-Adresse:")
  StringGadget(#G_SR_Contact_Mail, 5, 60, 350, 20, "")
  StringGadget(#G_SR_Contact_About, 5, 100, 350, 20, "Feedback")
  TextGadget(#G_TX_Contact_About, 5, 85, 350, 15, "Betreff:")
  StringGadget(#G_SR_Contact_Text, 5, 130, 350, 175, "")
  ButtonGadget(#G_BN_Contact_Cancel, 200, 310, 75, 25, "Abbrechen")
  ButtonGadget(#G_BN_Contact_Send, 280, 310, 75, 25, "Senden")
 Else
  MsgBox_Error("GadgetList 'Contact' konnte nicht erstellt werden"): End
 EndIf
 Global lWndID_Contact.l = WindowID(#Win_Contact)
 DisableWindow(#Win_Contact, 1)
Else
 MsgBox_Error("Fenster 'Contact' konnte nicht erstellt werden"): End
EndIf
;- WinLog
If OpenWindow(#Win_Log, -1, -1, 640, 480, #PrgName + " Log", #PB_Window_Invisible|#PB_Window_SystemMenu|#PB_Window_SizeGadget, WindowID(#Win_Main))
 If CreateGadgetList(WindowID(#Win_Log))
  ListIconGadget(#G_LI_Log_LogView, 0, 0, WindowWidth(#Win_Log), WindowHeight(#Win_Log), "Event", 10, #LVS_NOSORTHEADER|#LVS_NOCOLUMNHEADER)
   SetGadgetItemAttribute(#G_LI_Log_LogView, -1, #PB_ListIcon_ColumnWidth, Window_GetClientWidth(GadgetID(#G_LI_Log_LogView)), 1)
 Else
  MsgBox_Error("GadgetList 'Log' konnte nicht erstellt werden"): End
 EndIf
 Global lWndID_Log.l = WindowID(#Win_Log)
 DisableWindow(#Win_Log, 1)
Else
 MsgBox_Error("Fenster 'Log' konnte nicht erstellt werden"): End
EndIf
;- WinInfo
If OpenWindow(#Win_Info, -1, -1, 280, 285, "Informationen", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Main))
 If CreateGadgetList(WindowID(#Win_Info))
  ImageGadget(#G_IG_Info_Logo, 5, 0, 233, 100, hInfoLogo)
   DisableGadget(#G_IG_Info_Logo, 1)
  EditorGadget(#G_ED_Info_Text, 5, 100, 270, 150, #ES_READONLY)
  SetGadgetText(#G_ED_Info_Text, #Info)
  ButtonGadget(#G_BN_Info_Close, 100, 255, 80, 24, "OK")
 Else
  MsgBox_Error("GadgetList 'Info' konnte nicht erstellt werden"): End
 EndIf
 Global lWndID_Info.l = WindowID(#Win_Info)
 DisableWindow(#Win_Info, 1)
Else
 MsgBox_Error("Fenster 'Info' konnte nicht erstellt werden"): End
EndIf

Procedure InitOptions()
 SetGadgetItemText(#G_LI_Options_Adr, 0,  Hex(Adr\name), 1)
 SetGadgetItemText(#G_LI_Options_Adr, 1,  Hex(Adr\blvl), 1)
 SetGadgetItemText(#G_LI_Options_Adr, 2,  Hex(Adr\jlvl), 1)
 SetGadgetItemText(#G_LI_Options_Adr, 3,  Hex(Adr\bexp), 1)
 SetGadgetItemText(#G_LI_Options_Adr, 4,  Hex(Adr\bexpn), 1)
 SetGadgetItemText(#G_LI_Options_Adr, 5,  Hex(Adr\jexp), 1)
 SetGadgetItemText(#G_LI_Options_Adr, 6,  Hex(Adr\jexpn), 1)
 SetGadgetItemText(#G_LI_Options_Adr, 7,  Hex(Adr\jcls), 1)
 SetGadgetItemText(#G_LI_Options_Adr, 8,  Hex(Adr\zeny), 1)
 SetGadgetItemText(#G_LI_Options_Adr, 9,  Hex(Adr\state), 1)
 SetGadgetItemText(#G_LI_Options_Adr, 10, Hex(Adr\map), 1)
 
 SetGadgetText(#G_SR_Options_Title, Preferences\title)
 SetGadgetText(#G_SR_Options_Refresh, Str(Preferences\refreshtr))
 SetGadgetState(#G_CH_Options_OnTop, Preferences\ontop)
 SetGadgetState(#G_CH_Options_Sounds, Preferences\sounds)
 SetGadgetState(#G_CH_Options_JobSprite, Preferences\ssprites)
 SetGadgetState(#G_CH_options_WThread, Preferences\wthread)
EndProcedure

Procedure ChangeRefreshTime()
 Protected lTime.l = Val(Trim(GetGadgetText(#G_SR_Options_Refresh)))
 If lTime >= #MinRefreshTime And lTime <= #MaxRefreshTime
  Preferences\refreshtr = lTime
  SetGadgetText(#G_SR_Options_Refresh, Str(Preferences\refreshtr))
 Else
  SetGadgetText(#G_SR_Options_Refresh, Str(Preferences\refreshtr))
  MsgBox_Error("Ungültiger Wert" + #CRLF$ + "Gültiger Bereich: " + Str(#MinRefreshTime) + " - " + Str(#MaxRefreshTime))
 EndIf
EndProcedure

Procedure.s JobClsName(Class)
 Protected lNext.l

 For lNext = 0 To #MaxJobCls
  If JobClass(lNext)\v = Class
   ProcedureReturn JobClass(lNext)\n
  EndIf
 Next
 
 ProcedureReturn "Unbekannt"
EndProcedure

Procedure Watch_Start()
 lHandle = FindWindow_(@Preferences\title, @Preferences\title)
 If lHandle <> 0
  
  If Window_GetTitle(lHandle) = Preferences\title
   
   Protected lThread.l
   
   GetWindowThreadProcessId_(lHandle, @lThread)
   If lThread <> 0
    
    lProcess = OpenProcess_(#PROCESS_VM_READ, #Null, lThread)
    If lProcess <> 0
     
     lWatch = 1
     lWatchReset = 1
     lStartTime = timeGetTime_()
     
     SetGadgetText(#G_BN_Main_Start, "Stop")
     ProcedureReturn 1
     
    Else
     MsgBox_Exclamation("Kein Zugriff")
     ProcedureReturn 0
    EndIf
   
   Else
    MsgBox_Exclamation("Thread konnte nicht gefunden werden")
    ProcedureReturn 0
   EndIf
  
  EndIf
 
 EndIf
 
 MsgBox_Exclamation("Ragnarok wurde nicht gefunden")
 ProcedureReturn 0
EndProcedure

Procedure Watch_Stop()
 SetGadgetText(#G_BN_Main_Start, "Start")
 
 lWatch   = 0
 lHandle  = 0
 lProcess = 0
 
 If lProcess <> 0 And lHandle <> 0
  CloseHandle_(lProcess)
 EndIf
 
 SetGadgetText(#G_TX_Main_Time, "")
 SetGadgetText(#G_TX_Main_NameV, "")
 SetGadgetText(#G_TX_Main_BEXPV, "")
 SetGadgetText(#G_TX_Main_BEXPPV, "")
 SetGadgetState(#G_PB_Main_BEXP, 0)
 SetGadgetText(#G_TX_Main_JEXPV, "")
 SetGadgetText(#G_TX_Main_JEXPPV, "")
 SetGadgetState(#G_PB_Main_JEXP, 0)
 SetGadgetText(#G_TX_Main_RBEXPV, "")
 SetGadgetText(#G_TX_Main_RJEXPV, "")
 SetGadgetText(#G_TX_Main_BEXPHV, "")
 SetGadgetText(#G_TX_Main_JEXPHV, "")
 SetGadgetText(#G_TX_Main_KillsV, "")
EndProcedure

Procedure Watch_Reset()
 lWatchReset = 1
EndProcedure

Procedure Watch_Refresh()
 If lProcess <> 0 And lWatch = 1
  
  ;Client was Closed
  If IsWindow_(lHandle) = 0
   Watch_Stop()
   ProcedureReturn 0
  EndIf
  
  ;Read Data..
  Static lTimeRD.l
  If timeGetTime_() - lTimeRD >= Preferences\refreshtr
   lTimeRD = timeGetTime_()
   
   ;Name
   If ReadProcessMemory_(lProcess, Adr\name, *MBString, MemorySize(*MBString), #Null)
    Charinfo\name = Trim(PeekS(*MBString))
   EndIf
   ;HP
   If ReadProcessMemory_(lProcess, Adr\hp, *MBValue, MemorySize(*MBValue), #Null)
    Charinfo\hp = PeekL(*MBValue)
   EndIf
   ;HPmax
   If ReadProcessMemory_(lProcess, Adr\hpmax, *MBValue, MemorySize(*MBValue), #Null)
    Charinfo\hpmax = PeekL(*MBValue)
   EndIf   
   ;SP
   If ReadProcessMemory_(lProcess, Adr\sp, *MBValue, MemorySize(*MBValue), #Null)
    Charinfo\sp = PeekL(*MBValue)
   EndIf
   ;SPmax
   If ReadProcessMemory_(lProcess, Adr\spmax, *MBValue, MemorySize(*MBValue), #Null)
    Charinfo\spmax = PeekL(*MBValue)
   EndIf
   ;BaseLevel
   If ReadProcessMemory_(lProcess, Adr\blvl, *MBValue, MemorySize(*MBValue), #Null)
    Charinfo\blvl = PeekL(*MBValue)
   EndIf
   ;JobLevel
   If ReadProcessMemory_(lProcess, Adr\jlvl, *MBValue, MemorySize(*MBValue), #Null)
    Charinfo\jlvl = PeekL(*MBValue)
   EndIf
   ;BaseEXP
   If ReadProcessMemory_(lProcess, Adr\bexp, *MBValue, MemorySize(*MBValue), #Null)
    Charinfo\bexp = PeekL(*MBValue)
   EndIf
   ;BaseEXP Next
   If ReadProcessMemory_(lProcess, Adr\bexpn, *MBValue, MemorySize(*MBValue), #Null)
    Charinfo\bexpn = PeekL(*MBValue)
   EndIf
   ;JobEXP
   If ReadProcessMemory_(lProcess, Adr\jexp, *MBValue, MemorySize(*MBValue), #Null)
    Charinfo\jexp = PeekL(*MBValue)
   EndIf
   ;JobEXP Next
   If ReadProcessMemory_(lProcess, Adr\jexpn, *MBValue, MemorySize(*MBValue), #Null)
    Charinfo\jexpn = PeekL(*MBValue)
   EndIf
   ;JobCls
   If ReadProcessMemory_(lProcess, Adr\jcls, *MBValue, MemorySize(*MBValue), #Null)
    Charinfo\jcls = PeekL(*MBValue)
   EndIf
   ;Zeny
   If ReadProcessMemory_(lProcess, Adr\zeny, *MBValue, MemorySize(*MBValue), #Null)
    Charinfo\zeny = PeekL(*MBValue)
   EndIf
   ;State
   If ReadProcessMemory_(lProcess, Adr\state, *MBString, MemorySize(*MBString), #Null)
    Charinfo\state = Trim(PeekS(*MBString))
   EndIf
   ;Map
   If ReadProcessMemory_(lProcess, Adr\map, *MBString, MemorySize(*MBString), #Null)
    Charinfo\map = Trim(PeekS(*MBString))
   EndIf
  EndIf
  
  ;Display..
  If UCase(Trim(Charinfo\map)) <> "LOGIN.RSW"
   ;Ingame
   
   
   
   
   
   
   ;Refresh GUI
   Static sLTime.s
   Static sLName.s
   Static lLKillC.l
   Static lLBEXP.l, lLBEXPN.l
   Static lLJEXP.l, lLJEXPN.l
   Static lLRBEXP.l, lLRJEXP.l
   Static lLEXPH.l, lEXPH.l
   
   ;ResetTimes
   If lWatchReset <> 0
    lWatchReset = 0
    sLTime = ""
    sLName = ""
    lLKillC = -1
    lLBEXP = -1: lLBEXPN = -1
    lLJEXP = -1: lLJEXPN = -1
    lLRBEXP = -1 :lLRJEXP = -1
    lLEXPH.l = -1
   EndIf
  
   ;Time
   If FormatTimeGetTime(timeGetTime_() - lStartTime) <> sLTime
    sLTime = FormatTimeGetTime(timeGetTime_() - lStartTime)
    SetGadgetText(#G_TX_Main_Time, FormatTimeGetTime(timeGetTime_() - lStartTime))
   EndIf
  
   ;Name
   If Charinfo\name <> sLName
    sLName = Charinfo\name
    SetGadgetText(#G_TX_Main_NameV, JobClsName(Charinfo\jcls) + " " + sLName)
   EndIf
  
   ;RecivedEXP
   ;Base
   If Charinfo\bexp <> lLBEXP And lLBEXP <> -1
    Charinfo\rbexp + Charinfo\bexp - lLBEXP
   EndIf
   If Charinfo\rbexp <> lLRBEXP
    lLRBEXP = Charinfo\rbexp
    SetGadgetText(#G_TX_Main_RBEXPV, FormatPointedSize(Charinfo\rbexp))
   EndIf
   ;Job
   If Charinfo\jexp <> lLJEXP And lLJEXP <> -1
    Charinfo\rjexp + Charinfo\jexp - lLJEXP
   EndIf
   If Charinfo\rjexp <> lLRJEXP
    lLRJEXP = Charinfo\rjexp
    SetGadgetText(#G_TX_Main_RJEXPV, FormatPointedSize(Charinfo\rjexp))
   EndIf
  
   ;KilledMobs
   If Charinfo\bexp <> lLBEXP Or Charinfo\jexp <> lLJEXP
    Charinfo\killc + 1
    If Charinfo\killc <> lLKillC
     lLKillC = Charinfo\killc
     SetGadgetText(#G_TX_Main_KillsV, Str(Charinfo\killc))
    EndIf
   EndIf
  
   ;BaseEXP
   If Charinfo\bexp <> lLBEXP Or Charinfo\bexpn <> lLBEXPN
    lLBEXP =  Charinfo\bexp
    lLBEXPN = Charinfo\bexpn
    SetGadgetText(#G_TX_Main_BEXPV, FormatPointedSize(Charinfo\bexp) + "/" + FormatPointedSize(Charinfo\bexpn))
    SetGadgetText(#G_TX_Main_BEXPPV, StrF((Charinfo\bexp * 100)/Charinfo\bexpn, 2) + "%")
    SetGadgetState(#G_PB_Main_BEXP, (Charinfo\bexp * 100)/Charinfo\bexpn)
   EndIf
  
   ;JobEXP
   If Charinfo\jexp <> lLJEXP Or Charinfo\jexpn <> lLJEXPN
    lLJEXP =  Charinfo\jexp
    lLJEXPN = Charinfo\jexpn
    SetGadgetText(#G_TX_Main_JEXPV, FormatPointedSize(Charinfo\jexp) + "/" + FormatPointedSize(Charinfo\jexpn))
    SetGadgetText(#G_TX_Main_JEXPPV, StrF((Charinfo\jexp * 100)/Charinfo\jexpn, 2) + "%")
    SetGadgetState(#G_PB_Main_JEXP, (Charinfo\jexp * 100)/Charinfo\jexpn)
   EndIf
   
   ;BaseEXP/h
   Protected lMinutes.l = ((timeGetTime_() - lStartTime) / 1000) / 60
   
   If lMinutes > 0
    lEXPH = (Charinfo\rbexp / lMinutes) * 60
    
    If lEXPH <> lLEXPH
     lLEXPH = lEXPH
     SetGadgetText(#G_TX_Main_BEXPHV, Str(lEXPH))
    EndIf
   Else
    If GetGadgetText(#G_TX_Main_BEXPHV) <> "0"
     SetGadgetText(#G_TX_Main_BEXPHV, "0")
    EndIf
   EndIf
  
  Else
   ;Character Select
   
   SetGadgetText(#G_TX_Main_Time, "")
   If GetGadgetText(#G_TX_Main_NameV) <> "Character Auswahl"
    SetGadgetText(#G_TX_Main_NameV, "Character Auswahl")
   EndIf
   SetGadgetText(#G_TX_Main_BEXPV, "")
   SetGadgetText(#G_TX_Main_BEXPPV, "")
   SetGadgetState(#G_PB_Main_BEXP, 0)
   SetGadgetText(#G_TX_Main_JEXPV, "")
   SetGadgetText(#G_TX_Main_JEXPPV, "")
   SetGadgetState(#G_PB_Main_JEXP, 0)
   SetGadgetText(#G_TX_Main_RBEXPV, "")
   SetGadgetText(#G_TX_Main_RJEXPV, "")
   SetGadgetText(#G_TX_Main_BEXPHV, "")
   SetGadgetText(#G_TX_Main_JEXPHV, "")
   SetGadgetText(#G_TX_Main_KillsV, "")
  
  EndIf
 
 EndIf
EndProcedure

Procedure WindowCallback(hWnd, Msg, wParam, lParam)
 Protected Result.l = #PB_ProcessPureBasicEvents

 If hWnd = lWndID_Main Or hWnd = lWndID_Options Or hWnd = lWndID_Contact Or hWnd = lWndID_Info Or hWnd = lWndID_Log
 
  ;ReleaseCapture
  If Msg = #WM_LBUTTONDOWN
   ReleaseCapture_()
   SendMessage_(hWnd, #WM_NCLBUTTONDOWN, #HTCAPTION, #Null)
  EndIf
 
  ;Moveall
  If Msg = #WM_MOVE And hWnd = lWndID_Main
   Protected Win_MoveX.l, Win_MoveY.l
   Static OldWin_PosX.l, OldWin_PosY.l
  
   Win_MoveX = WindowX(#Win_Main) - OldWin_PosX
   Win_MoveY = WindowY(#Win_Main) - OldWin_PosY
   OldWin_PosX = WindowX(#Win_Main)
   OldWin_PosY = WindowY(#Win_Main)
   
   ResizeWindow(#Win_Options, WindowX(#Win_Options) + Win_MoveX, WindowY(#Win_Options) + Win_MoveY, #PB_Ignore, #PB_Ignore)
   ResizeWindow(#Win_Contact, WindowX(#Win_Contact) + Win_MoveX, WindowY(#Win_Contact) + Win_MoveY, #PB_Ignore, #PB_Ignore)
   ResizeWindow(#Win_Info, WindowX(#Win_Info) + Win_MoveX, WindowY(#Win_Info) + Win_MoveY, #PB_Ignore, #PB_Ignore)
   ResizeWindow(#Win_Log, WindowX(#Win_Log) + Win_MoveX, WindowY(#Win_Log) + Win_MoveY, #PB_Ignore, #PB_Ignore)
  EndIf
  
  ;Magnetic
  If Msg = #WM_WINDOWPOSCHANGING And Preferences\magnetic <> 0
   Protected WorkR.RECT, *WinR.WINDOWPOS = lParam
   If SystemParametersInfo_(#SPI_GETWORKAREA, #Null, @WorkR, #Null) <> 0 And *WinR <> 0
    If *WinR\x >= WorkR\left - Preferences\magneticv And *WinR\x <= WorkR\left + Preferences\magneticv: *WinR\x = WorkR\left: EndIf
    If *WinR\y >= WorkR\top - Preferences\magneticv And *WinR\y <= WorkR\top + Preferences\magneticv: *WinR\y = WorkR\top: EndIf
    If *WinR\y + *WinR\cy >= WorkR\bottom - Preferences\magneticv And *WinR\y + *WinR\cy <= WorkR\bottom + Preferences\magneticv: *WinR\y = WorkR\bottom - *WinR\cy: EndIf
    If *WinR\x + *WinR\cx >= WorkR\right - Preferences\magneticv And *WinR\x + *WinR\cx <= WorkR\right + Preferences\magneticv: *WinR\x = WorkR\right - *WinR\cx: EndIf
   EndIf
  EndIf
 
 EndIf
 
 ProcedureReturn Result
EndProcedure

Procedure SavePreferences()
 If CreatePreferences(ExePath() + #IniFile)
  
  PreferenceGroup("Win")
   WritePreferenceLong("WinX_Main", WindowX(#Win_Main))
   WritePreferenceLong("WinY_Main", WindowY(#Win_Main))
  
  PreferenceGroup("Main")
   WritePreferenceString("Title",       Preferences\title)
   WritePreferenceLong("RefreshTime",   Preferences\refreshtr)
   WritePreferenceLong("Magnetic",      Preferences\magnetic)
   WritePreferenceLong("MagneticValue", Preferences\magneticv)
   WritePreferenceLong("AlwaysOnTop",   Preferences\ontop)
   WritePreferenceLong("Sounds",        Preferences\sounds)
   WritePreferenceLong("ShowSprites",   Preferences\ssprites)
   WritePreferenceLong("WatchThread",   Preferences\wthread)
  
  PreferenceGroup("Memory")
   WritePreferenceLong("name",  Adr\name)
   WritePreferenceLong("hp", Adr\hp)
   WritePreferenceLong("hpmax", Adr\hpmax)
   WritePreferenceLong("sp", Adr\sp)
   WritePreferenceLong("spmax", Adr\spmax)
   WritePreferenceLong("blvl",  Adr\blvl)
   WritePreferenceLong("jlvl",  Adr\jlvl)
   WritePreferenceLong("bexp",  Adr\bexp)
   WritePreferenceLong("bexpn", Adr\bexpn)
   WritePreferenceLong("jexp",  Adr\jexp)
   WritePreferenceLong("jexpn", Adr\jexpn)
   WritePreferenceLong("jcls",  Adr\jcls)
   WritePreferenceLong("zeny",  Adr\zeny)
   WritePreferenceLong("state", Adr\state)
   WritePreferenceLong("map",   Adr\map)
  
  ClosePreferences()
 Else
  MsgBox_Exclamation("Einstellungen konnten nicht gespeichert werden" + #CRLF$ + "'" + ExePath() + "ROWatch.inf" + "'")
 EndIf
EndProcedure

Procedure LoadPreferences()
 OpenPreferences(ExePath() + #IniFile)
  
  PreferenceGroup("Win")
   Protected W.RECT, P.RECT

   SystemParametersInfo_(#SPI_GETWORKAREA, #Null, @W, #Null)

   P\left = ReadPreferenceLong("WinX_Main", GetSystemMetrics_(#SM_CXSCREEN)/2 - Window_GetWidth(#Win_Main)/2)
   P\top  = ReadPreferenceLong("WinY_Main", GetSystemMetrics_(#SM_CYSCREEN)/2 - Window_GetHeight(#Win_Main)/2)

   If P\left < W\left:                                 P\left = W\left:                                 EndIf
   If P\top < W\top:                                   P\top = W\top:                                   EndIf
   If P\left + Window_GetWidth(#Win_Main) > W\right:   P\left = W\right - Window_GetWidth(#Win_Main):   EndIf
   If P\top + Window_GetHeight(#Win_Main) > W\bottom:  P\top = W\bottom - Window_GetHeight(#Win_Main):  EndIf

   ResizeWindow(#Win_Main, P\left, P\top, #PB_Ignore, #PB_Ignore)
  
  PreferenceGroup("Main")
   Preferences\title =     ReadPreferenceString("Title", "Ragnarok")
   If Trim(Preferences\title) = ""
    Preferences\title = "Ragnarok"
   Else
    Preferences\title = Left(Preferences\title, 50) 
   EndIf
   Preferences\refreshtr = ReadPreferenceLong("RefreshTime", 50)
   If Preferences\refreshtr < #MinRefreshTime Or Preferences\refreshtr > #MaxRefreshTime
    Preferences\refreshtr = 50
   EndIf
   Preferences\magnetic =  ReadPreferenceLong("Magnetic", 1)
   Preferences\magneticv = ReadPreferenceLong("MagneticValue", 20)
   
   Preferences\ontop =     ReadPreferenceLong("AlwaysOnTop", 0)
   If Preferences\ontop >= 1
    Window_AlwaysOnTop(#Win_Main, 1)
    Preferences\ontop = 1
   Else
    Preferences\ontop = 0
   EndIf
   
   Preferences\sounds =    ReadPreferenceLong("Sounds", 0)
   
   Preferences\ssprites =  ReadPreferenceLong("ShowSprites", 1)
   
   Preferences\wthread =   ReadPreferenceLong("WatchThread", 1)
  
  PreferenceGroup("Memory")
   Adr\name =  ReadPreferenceLong("Name",  #Adr_name)
   If Adr\name <= 0 Or Adr\name >= 9999999: Adr\name = #Adr_name: EndIf
   Adr\hp = ReadPreferenceLong("hp", #Adr_hp)
   If Adr\hp <= 0 Or Adr\hp >= 9999999: Adr\hp = #Adr_hp: EndIf
   Adr\hpmax = ReadPreferenceLong("hpmax", #Adr_hpmax)
   If Adr\hpmax <= 0 Or Adr\hpmax >= 9999999: Adr\hpmax = #Adr_hpmax: EndIf
   Adr\sp = ReadPreferenceLong("sp", #Adr_sp)
   If Adr\sp <= 0 Or Adr\sp >= 9999999: Adr\sp = #Adr_sp: EndIf
   Adr\spmax = ReadPreferenceLong("spmax", #Adr_spmax)
   If Adr\spmax <= 0 Or Adr\spmax >= 9999999: Adr\spmax = #Adr_spmax: EndIf
   Adr\blvl =  ReadPreferenceLong("blvl",  #Adr_blvl)
   If Adr\blvl <= 0 Or Adr\blvl >= 9999999: Adr\blvl = #Adr_blvl: EndIf
   Adr\jlvl =  ReadPreferenceLong("jlvl",  #Adr_jlvl)
   If Adr\jlvl <= 0 Or Adr\jlvl >= 9999999: Adr\jlvl = #Adr_jlvl: EndIf
   Adr\bexp =  ReadPreferenceLong("bexp",  #Adr_bexp)
   If Adr\bexp <= 0 Or Adr\bexp >= 9999999: Adr\bexp = #Adr_bexp: EndIf
   Adr\bexpn = ReadPreferenceLong("bexpn", #Adr_bexpn)
   If Adr\bexpn <= 0 Or Adr\bexpn >= 9999999: Adr\bexpn = #Adr_bexpn: EndIf
   Adr\jexp =  ReadPreferenceLong("jexp",  #Adr_jexp)
   If Adr\jexp <= 0 Or Adr\jexp >= 9999999: Adr\jexp = #Adr_jexp: EndIf
   Adr\jexpn = ReadPreferenceLong("jexpn", #Adr_jexpn)
   If Adr\jexpn <= 0 Or Adr\jexpn >= 9999999: Adr\jexpn = #Adr_jexpn: EndIf
   Adr\jcls =  ReadPreferenceLong("jcls",  #Adr_jcls)
   If Adr\jcls <= 0 Or Adr\jcls >= 9999999: Adr\jcls = #Adr_jcls: EndIf
   Adr\zeny =  ReadPreferenceLong("zeny",  #Adr_zeny)
   If Adr\zeny <= 0 Or Adr\zeny >= 9999999: Adr\zeny = #Adr_zeny: EndIf
   Adr\state = ReadPreferenceLong("state", #Adr_state)
   If Adr\state <= 0 Or Adr\state >= 9999999: Adr\state = #Adr_state: EndIf
   Adr\map =   ReadPreferenceLong("map",   #Adr_map)
   If Adr\map <= 0 Or Adr\map >= 9999999: Adr\map = #Adr_map: EndIf
 
 ClosePreferences()
EndProcedure

Procedure EndApp()
 If lProcess <> 0 And lHandle <> 0
  CloseHandle_(lProcess)
 EndIf
 
 SavePreferences()
 
 End
EndProcedure

;- Start
LoadPreferences()

SetWindowCallback(@WindowCallback())
DisableWindow(#Win_Main, 0)
HideWindow(#Win_Main, 0)

AddSysTrayIcon(0, WindowID(#Win_Main), LoadIcon_(GetModuleHandle_(0), "#1"))
SysTrayIconToolTip(0, #PrgName)

;Timer
If Preferences\wthread >= 1
 SetTimer_(WindowID(#Win_Main), #Timer, 1, @Watch_Refresh())
EndIf

Repeat
 lWindowEvent = WaitWindowEvent(2)
 lEventWindow = EventWindow()
 lEventGadget = EventGadget()
 lEventMenu   = EventMenu()
 lEventType   = EventType()

 If Preferences\wthread = <0
  Watch_Refresh()
 EndIf

 Select lWindowEvent
  ;- Event_Menu
  Case #PB_Event_Menu
   Select lEventMenu
    
    Case #Mnu_SysTray_Show
    
    Case #Mnu_SysTray_ROShow
    
    Case #Mnu_SysTray_Contact
     ResizeWindow(#Win_Contact, (GetSystemMetrics_(#SM_CXSCREEN)/2) - (Window_GetWidth(#Win_Contact)/2), (GetSystemMetrics_(#SM_CYSCREEN)/2) - (Window_GetWidth(#Win_Contact)/2), #PB_Ignore, #PB_Ignore)
     SetGadgetText(#G_SR_Contact_Name, "")
     SetGadgetText(#G_SR_Contact_Mail, "")
     SetGadgetText(#G_SR_Contact_About, "")
     SetGadgetText(#G_SR_Contact_Text, "")
     HideWindow(#Win_Contact, 0)
     DisableWindow(#Win_Contact, 0)

    Case #Mnu_SysTray_Info
     ResizeWindow(#Win_Info, (GetSystemMetrics_(#SM_CXSCREEN)/2) - (Window_GetWidth(#Win_Info)/2), (GetSystemMetrics_(#SM_CYSCREEN)/2) - (Window_GetWidth(#Win_Info)/2), #PB_Ignore, #PB_Ignore)
     HideWindow(#Win_Info, 0)
     DisableWindow(#Win_Info, 0)    

    Case #Mnu_SysTray_End
     EndApp()
   
   EndSelect
  
  ;- Event_Gadget
  Case #PB_Event_Gadget
   Select lEventWindow
    
    Case #Win_Main
     Select lEventGadget
      Case #G_BN_Main_Options
       If IsWindowVisible_(WindowID(#Win_Options)) = 0
        InitOptions()
        If WindowX(#Win_Main) + Window_GetWidth(#Win_Main) + Window_GetWidth(#Win_Options) >= GetSystemMetrics_(#SM_CXSCREEN)
         ResizeWindow(#Win_Options, WindowX(#Win_Main) - Window_GetWidth(#Win_Options), WindowY(#Win_Main), #PB_Ignore, #PB_Ignore)
        Else
         ResizeWindow(#Win_Options, WindowX(#Win_Main) + Window_GetWidth(#Win_Main), WindowY(#Win_Main), #PB_Ignore, #PB_Ignore)
        EndIf
        HideWindow(#Win_Options, 0)
        DisableWindow(#Win_Options, 0)
       Else
        HideWindow(#Win_Options, 1)
       EndIf
      Case #G_BN_Main_Reset
       Watch_Reset()
      Case #G_BN_Main_Start
       Select UCase(GetGadgetText(#G_BN_Main_Start))
        Case "START"
         Watch_Start()
        Case "STOP"
         Watch_Stop()
       EndSelect
     EndSelect
    
    Case #Win_Options
     Select lEventGadget
      Case #G_SR_Options_Title
       If lEventType = #PB_EventType_Change
        Preferences\title = Trim(GetGadgetText(#G_SR_Options_Title))
       EndIf
      Case #G_BN_Options_Refresh
       ChangeRefreshTime()
      Case #G_CH_Options_OnTop
       Preferences\ontop = GetGadgetState(#G_CH_Options_OnTop)
       Window_AlwaysOnTop(#Win_Main, Preferences\ontop)
      Case #G_CH_Options_Sounds
       Preferences\sounds = GetGadgetState(#G_CH_Options_Sounds)
      Case #G_CH_Options_JobSprite
       Preferences\ssprites = GetGadgetState(#G_CH_Options_JobSprite)
      Case #G_CH_options_WThread
       Select GetGadgetState(#G_CH_options_WThread)
        Case 1
         SetTimer_(WindowID(#Win_Main), #Timer, 0, @Watch_Refresh())
        Case 0
         KillTimer_(WindowID(#Win_Main), #Timer)
         MsgBox_Exclamation("Hiermit wird die aktuallisierung Threadlos durchgeführt," + #CRLF$ + "dadurch können Ereignisse schneller verpasst werden." + #CRLF$ + "Diese Einstellung ist nicht zu empfehlen!")
       EndSelect
       Preferences\wthread = GetGadgetState(#G_CH_options_WThread)
     EndSelect
   
    Case #Win_Contact
    
    Case #Win_Info
     Select lEventGadget
      Case #G_BN_Info_Close
       DisableWindow(#Win_Info, 1)
       HideWindow(#Win_Info, 1)
     EndSelect
    
    Case #Win_Log
   
   EndSelect
  
  ;- Event_SysTray
  Case #PB_Event_SysTray
   Select lEventType
    Case #PB_EventType_LeftClick
     If IsWindowVisible_(WindowID(#Win_Main))
      SetForegroundWindow_(WindowID(#Win_Main))
     EndIf
    Case #PB_EventType_LeftDoubleClick
     If IsWindowVisible_(WindowID(#Win_Main))
      HideWindow(#Win_Main, 1)
      SetMenuItemText(#Menu_PopUp, #Mnu_SysTray_Show, "Zeigen")
      If IsWindowVisible_(WindowID(#Win_Options))
       DisableWindow(#Win_Main, 0)
       HideWindow(#Win_Options, 1)
       DisableWindow(#Win_Options, 1)
       DisableGadget(#G_BN_Main_Options, 0)
      EndIf
     Else
      HideWindow(#Win_Main, 0)
      SetMenuItemText(#Menu_PopUp, #Mnu_SysTray_Show, "Verstecken")
     EndIf
    Case #PB_EventType_RightClick
     DisplayPopupMenu(#Menu_PopUp, WindowID(#Win_Main))
   EndSelect
  
  ;- Event_CloseWindow
  Case #PB_Event_CloseWindow
   Select lEventWindow
    Case #Win_Hide, #Win_Main
     EndApp()
    Case #Win_Options
     HideWindow(#Win_Options, 1)
     DisableWindow(#Win_Options, 1)
    Case #Win_Contact
     DisableWindow(#Win_Contact, 1)
     HideWindow(#Win_Contact, 1)
    Case #Win_Log
     DisableWindow(#Win_Log, 1)
     HideWindow(#Win_Log, 1)
    Case #Win_Info
     DisableWindow(#Win_Info, 1)
     HideWindow(#Win_Info, 1)
   EndSelect
 
 EndSelect
ForEver
; IDE Options = PureBasic 4.20 Beta 4 (Windows - x86)
; CursorPosition = 719
; FirstLine = 621
; Folding = -DA9--
; EnableXP
; Executable = ROWatchFinal.exe
; CPU = 1
; CompileSourceDirectory
; EnableCompileCount = 429
; EnableBuildCount = 132
; EnableExeConstant
; AddResource = Ressource.rc