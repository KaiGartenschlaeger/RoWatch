EnableExplicit

OnErrorGoto(?Error)

XIncludeFile #PB_Compiler_Home + "\Include\" + "G15.pb"

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
    #G_BN_Main_Log
    #G_BN_Main_Reset
    #G_BN_Main_Start
    ;Options
    #G_TX_Options_Adr
    #G_LI_Options_Adr
    #G_BN_Options_UpdateAdr
    #G_CH_Options_AutoUpdateAdr
    #G_TX_Options_Title
    #G_SR_Options_Title
    #G_TX_Options_Refresh
    #G_SR_Options_Refresh
    #G_BN_Options_Refresh
    #G_CH_Options_Sounds
    #G_CH_Options_JobSprite
    #G_CH_Options_WThread
    #G_CH_Options_Loging
    #G_CH_Options_G15
    #G_CH_Options_Autoupdate
    #G_BN_Options_Update
    #G_CH_Options_OnTop
    #G_CH_Options_Opacity
    #G_CH_Options_Magnetic
    #G_CH_Options_MoveAllWin
    #G_TX_Options_Screenshotdelay
    #G_CH_Options_BaseUPScreenshot
    #G_SN_Options_BaseUPDelay
    #G_CH_Options_JobUPScreenshot
    #G_SN_Options_JobUPDelay
    #G_TX_Options_ROFolder
    #G_SR_Options_ROFolder
    #G_BN_Options_FOFolder
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
    #Mnu_SysTray_Client
    #Mnu_SysTray_Patcher
    #Mnu_SysTray_Setup
    #Mnu_SysTray_Folder_Main
    #Mnu_SysTray_Folder_ScreenShot
    #Mnu_SysTray_Folder_Emblem
    #Mnu_SysTray_Folder_Skin
    #Mnu_SysTray_Start
    #Mnu_SysTray_Reset
    #Mnu_SysTray_Contact
    #Mnu_SysTray_Log
    #Mnu_SysTray_Update
    #Mnu_SysTray_Info
    #Mnu_SysTray_End
EndEnumeration

Enumeration
    #Log_Info
    #Log_Warnung
    #Log_Error
    #Log_BLevelUP
    #Log_JLevelUP
    #Log_REXP
    #Log_LEXP
    #Log_RZeny
    #Log_LZeny
    
    #Log_HPReceived
    #Log_HpLost
    #Log_SPReceived
    #Log_SPLost
EndEnumeration

Enumeration
    #LCD_SHW_EXP
    #LCD_SHW_EXPR
    #LCD_SHW_EXPN
    #LCD_SHW_EXPH
EndEnumeration

#LCD_CLR_BG = $FFFFFF
#LCD_CLR_FG = $000000

#PrgName =          "ROWatch"
#PrgVers =          113
#Magnetic =         15
#Opacity =          150
#ClientTitle =      "Ragnarok"
#MinRefreshTime =   20
#MaxRefreshTime =   5000
#MinScreenDelay =   0
#MaxScreenDelay =   5000
#Info =             "{\rtf1\ansi\ansicpg1252\deff0\deflang1031{\fonttbl{\f0\fswiss\fcharset0 Arial;}}" + #CRLF$ + "{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;\red255\green0\blue0;}" + #CRLF$ + "{\*\generator Msftedit 5.41.21.2507;}\viewkind4\uc1\pard\qc\cf1\f0\fs20\par" + #CRLF$ + "Ragnawatch Version \cf0 1.12\par" + #CRLF$ + "\par" + #CRLF$ + "\cf2 Copyright:\par" + #CRLF$ + "NuffBuff(Kai Gartenschl\'e4ger)\cf0 , \cf3 2008\par" + #CRLF$ + "\par" + #CRLF$ + "\cf1\par" + #CRLF$ + "\pard Changelog:\par" + #CRLF$ + "\par" + #CRLF$ + "Version \cf2 1.12\cf1\par" + #CRLF$ + "- G15 EXP-Modus umschaltbar\par" + #CRLF$ + "Version \cf2 1.10\cf1\par" + #CRLF$ + "- G15 LCD Support\par" + #CRLF$ + "Version \cf2 1.00\cf1\par" + #CRLF$ + "- First Release\cf0\par" + #CRLF$ + "}"
#IniFile =          "ROWatch.inf"
#Mail =             "dergarty@freenet.de"
#SMTP =             "mx.freenet.de"
#URLHomepage =      "http://purefreak.pu.funpic.de/"
#URLUpdate1 =       "http://purefreak.pu.funpic.de/data/version/rowatch.inf"
#URLUpdate2 =       "http://purefreak.pu.funpic.de/data/version/rowatch.inf"
#Timer =            0

#Adr_name =  $7ba13c
#Adr_blvl =  $7b8cb4
#Adr_jlvl =  $7b8cc0
#Adr_bexp =  $7b8cb0
#Adr_bexpn = $7b8cbc
#Adr_jexp =  $7b8d6c
#Adr_jexpn = $7b8d68
#Adr_jcls =  $7b8cac
#Adr_zeny =  $7B8D58
#Adr_state = $791028
#Adr_hp    = $0
#Adr_mhp   = $0
#Adr_sp    = $0
#Adr_msp   = $0

;G15
Global ctx.lgLcdConnectContext
Global ctxo.lgLcdOpenContext
Global G15_IMGBuffer.l
Global G15_Font.l

Global lWindowEvent.l
Global lEventWindow.l
Global lEventGadget.l
Global lEventMenu.l
Global lEventType.l

Global lStartTime.l

Global lSemaphore.l

Global lHandle.l
Global lProcess.l
Global lWatch.l
Global lWatchReset.l = 1

Global lInitNetwork.l = InitNetwork()

Structure ShwWnd
    Main.b
    Options.b
    Contact.b
    Log.b
    Info.b
EndStructure
Global ShowWindow.ShwWnd

Structure Adress
    name.l
    blvl.l
    jlvl.l
    bexp.l
    bexpn.l
    jexp.l
    jexpn.l
    jcls.l
    zeny.l
    state.l
    hp.l
    mhp.l
    sp.l
    msp.l
EndStructure
Global Adr.Adress

Structure Pref
    title.s       ;Title from RagnarokClient Window
    refreshtr.l   ;Refreshtime to read data
    refreshtg.l   ;Refreshtime to refresh GUI
    magnetic.b    ;Magnetic Windows
    magneticv.l   ;Magnetic Windows Value
    opacity.b     ;Transparents
    opacityv.l    ;Transparents Value
    ontop.b       ;Always on top
    sounds.b      ;Sounds
    ssprites.b    ;Show JobSprite
    wthread.l     ;Watch as a Thread
    loging.b      ;Loging
    logingm.l     ;Loging Max
    g15.b         ;G15 LCD Suport
    g15mode.b     ;G15 LCD Modus (EXP,EXP/H, N.EXP)
    moveallwin.b  ;Moving every all Windows
    adrupdate.b   ;Automatisches Adressen Update
    buscreen.b    ;Screenshot bei BaseUP
    busdelay.l    ;Delay nach BaseUP Screenshot
    juscreen.b    ;Screenshot bei JobUP
    jusdelay.l    ;Delay nach JobUP Screenshot
    rofolder.s    ;Ragnarok Ordner
    autoupdate.b  ;Autoupdate
EndStructure
Global Preferences.Pref

Structure Charinfo
    name.s
    blvl.l
    jlvl.l
    bexp.q
    bexpn.q
    jexp.q
    jexpn.q
    jcls.l
    zeny.l
    state.s
    
    bexpr.q
    jexpr.q
    bexph.q
    jexph.q
    
    sname.s  ;Charactername bei Start
    sbexp.q  ;BaseEXP bei Start
    sjexp.q  ;JobEXP bei Start
    
    hp.i
    mhp.i
    sp.i
    msp.i
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
JobClass(2)\v  = 2    :JobClass(2)\n  = "Magician"
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
JobClass(37)\v = 4011 :JobClass(37)\n = "Master Smith"
JobClass(38)\v = 4012 :JobClass(38)\n = "Sniper"
JobClass(39)\v = 4013 :JobClass(39)\n = "Assassin Cross"
JobClass(40)\v = 4014 :JobClass(40)\n = "Lord Knight"
JobClass(41)\v = 4015 :JobClass(41)\n = "Paladin"
JobClass(42)\v = 4016 :JobClass(42)\n = "Champion"
JobClass(43)\v = 4017 :JobClass(43)\n = "Professor"
JobClass(44)\v = 4018 :JobClass(44)\n = "Stalker"
JobClass(45)\v = 4019 :JobClass(45)\n = "Biochemist"
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

Procedure.l PushKey(Key)
    Protected I.INPUT
    
    ;Down
    I\type =   1
    I\ki\wVK = Key
    If SendInput_(1, @I, SizeOf(INPUT)) <> 0
        ;Up
        I\type =       1
        I\ki\wVK =     Key
        I\ki\dwFlags = #KEYEVENTF_KEYUP
        SendInput_(1, @I, SizeOf(INPUT))
    EndIf
EndProcedure

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
        Protected lNext.l, sSize.s = Str(Size), sTemp.s, sResult.s
        For lNext = 1 To Len(sSize)
            sResult = Mid(sSize, Len(sSize) - lNext + 1, 1)
            If lNext % 3 = 0 And lNext <> Len(sSize)
                sResult = "." + sResult
            EndIf
            sTemp = sResult + sTemp
        Next
        ProcedureReturn sTemp
    Else
        ProcedureReturn Str(Size)
    EndIf
EndProcedure

Procedure.l ValidHexString(String$)
    If String$ <> ""
        Protected lNext.l, *C.Character = @String$
        
        If *C <> 0
            
            For lNext = 1 To Len(String$)
                
                If *C\C <= 47 Or (*C\C >= 58 And *C\C <= 64) Or (*C\C >= 71 And *C\C <= 96) Or *C\C >= 103
                    ProcedureReturn 0
                EndIf
                
                *C + 1
            Next
            
            ProcedureReturn 1
            
        EndIf
        
    EndIf
EndProcedure

Procedure.q Hex2Dec(HexValue$)
    Protected x.s = LCase(HexValue$)
    Protected l.l = Len(x)
    Protected i.l, n.l, result.q
    
    For i = 1 To l
        result * 16
        n = FindString("0123456789abcdef", Mid(x, i, 1), 1) -1
        result + n
    Next i
    
    ProcedureReturn result
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

Procedure.l Window_SetLayeredStyle(Window, Bool)
    If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
        If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
        If Bool = 1
            ProcedureReturn SetWindowLong_(Window, #GWL_EXSTYLE, GetWindowLong_(Window, #GWL_EXSTYLE) | #WS_EX_LAYERED)
        Else
            ProcedureReturn SetWindowLong_(Window, #GWL_EXSTYLE, GetWindowLong_(Window, #GWL_EXSTYLE) & ~#WS_EX_LAYERED)
        EndIf
    EndIf
EndProcedure

Procedure.l Window_SetOpacity(Window, Opacity)
    If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
        If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
        ProcedureReturn SetLayeredWindowAttributes_(Window, #Null, Opacity, #LWA_ALPHA)
    EndIf
EndProcedure

Procedure.l Window_ResizeEx(Window, *P.RECT, Resize)
    If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
        If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
        
        Protected W.RECT, lFlag.l
        
        SystemParametersInfo_(#SPI_GETWORKAREA, #Null, @W, #Null)
        
        If *P\Left < W\left
            *P\Left = W\left
        EndIf
        If *P\Top < W\top
            *P\Top = W\top
        EndIf
        If *P\Left + Window_GetWidth(Window) > W\right
            *P\Left = W\right - Window_GetWidth(Window)
        EndIf
        If *P\Top + Window_GetHeight(Window) > W\bottom
            *P\Top = W\bottom - Window_GetHeight(Window)
        EndIf
        
        If Resize >= 1
            lFlag = #SWP_NOSENDCHANGING|#SWP_NOZORDER
        Else
            lFlag = #SWP_NOSIZE|#SWP_NOSENDCHANGING|#SWP_NOZORDER
        EndIf
        
        ProcedureReturn SetWindowPos_(Window, #Null, *P\Left, *P\Top, *P\right - *P\left, *P\bottom - *P\top, lFlag)
    EndIf
EndProcedure

;- WinHide
If OpenWindow(#Win_Hide, 0, 0, 0, 0, "ROWatch - MainHide", #PB_Window_Invisible)
    DisableWindow(#Win_Hide, 1)
Else
    MsgBox_Error("Fenster 'Hide' konnte nicht erstellt werden"): End
EndIf
;- WinMain
If OpenWindow(#Win_Main, -1, -1, 410, 135, #PrgName + " " + StrF(#PrgVers/100, 2), #PB_Window_Invisible|#PB_Window_SystemMenu|#PB_Window_MinimizeGadget, WindowID(#Win_Hide))
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
    TextGadget(#G_TX_Main_REXPT, 5, 85, 100, 15, "Erhaltene EXP", #PB_Text_Right)
    TextGadget(#G_TX_Main_RBEXPV, 105, 85, 110, 15, "", #PB_Text_Center)
    TextGadget(#G_TX_Main_RJEXPV, 215, 85, 110, 15, "", #PB_Text_Center)
    TextGadget(#G_TX_Main_EXPHT, 5, 100, 100, 15, "EXP/h", #PB_Text_Right)
    TextGadget(#G_TX_Main_BEXPHV, 105, 100, 110, 15, "", #PB_Text_Center)
    TextGadget(#G_TX_Main_JEXPHV, 215, 100, 110, 15, "", #PB_Text_Center)
    TextGadget(#G_TX_Main_KillsT, 5, 115, 100, 15, "Getötete Gegner", #PB_Text_Right)
    TextGadget(#G_TX_Main_KillsV, 105, 115, 110, 15, "", #PB_Text_Center)
    ButtonGadget(#G_BN_Main_Options, 330, 25, 75, 24, "Optionen")
    ButtonGadget(#G_BN_Main_Log, 330, 50, 75, 24, "Log")
    ButtonGadget(#G_BN_Main_Reset, 330, 80, 75, 24, "Reset")
    ButtonGadget(#G_BN_Main_Start, 330, 105, 75, 24, "Start")
    If CreatePopupImageMenu(#Menu_PopUp, WindowID(#Win_Main))
        MenuItem(#Mnu_SysTray_Show, "Verstecken", ImageList_GetIcon_(hImgList, 0, 0))
        MenuItem(#Mnu_SysTray_ROShow, "Client verstecken", ImageList_GetIcon_(hImgList, 15, 0))
        OpenSubMenu("Client")
        MenuItem(#Mnu_SysTray_Client, "Client")
        MenuItem(#Mnu_SysTray_Patcher, "Patcher")
        MenuItem(#Mnu_SysTray_Setup, "Setup")
        OpenSubMenu("Ordner Öffnen")
        MenuItem(#Mnu_SysTray_Folder_Main, "Hauptordner")
        MenuItem(#Mnu_SysTray_Folder_ScreenShot, "Screenshot")
        MenuItem(#Mnu_SysTray_Folder_Emblem, "Emblem")
        MenuItem(#Mnu_SysTray_Folder_Skin, "Skin")
        CloseSubMenu()
        CloseSubMenu()
        MenuBar()
        MenuItem(#Mnu_SysTray_Start, "Start", ImageList_GetIcon_(hImgList, 6, 0))
        MenuItem(#Mnu_SysTray_Reset, "Reset", ImageList_GetIcon_(hImgList, 7, 0))
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
If OpenWindow(#Win_Options, -1, -1, 460, 345, "Optionen", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Main))
    ListIconGadget(#G_LI_Options_Adr, 5, 20, 220, 290, "Type", 100, #LVS_NOSORTHEADER|#LVS_NOCOLUMNHEADER|#PB_ListIcon_FullRowSelect|#PB_ListIcon_GridLines|#PB_ListIcon_AlwaysShowSelection)
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
    
    AddGadgetItem(#G_LI_Options_Adr, -1, "HP")
    AddGadgetItem(#G_LI_Options_Adr, -1, "Max HP")    
    AddGadgetItem(#G_LI_Options_Adr, -1, "SP")
    AddGadgetItem(#G_LI_Options_Adr, -1, "Max SP")
    
    SetGadgetItemAttribute(#G_LI_Options_Adr, -1, #PB_ListIcon_ColumnWidth, Window_GetClientWidth(GadgetID(#G_LI_Options_Adr)) - GetGadgetItemAttribute(#G_LI_Options_Adr, -1, #PB_ListIcon_ColumnWidth, 0), 1)
    GadgetToolTip(#G_LI_Options_Adr, "Doppelklick um Werte zu ändern")
    ButtonGadget(#G_BN_Options_UpdateAdr, 5, 315, 85, 25, "Update")
    GadgetToolTip(#G_BN_Options_UpdateAdr, "Lädt die aktuellste Adressenliste herunter")
    CheckBoxGadget(#G_CH_Options_AutoUpdateAdr, 95, 320, 130, 15, "Automatisch Updaten")
    TextGadget(#G_TX_Options_Title, 230, 5, 200, 15, "Fenstertitel")
    StringGadget(#G_SR_Options_Title, 230, 20, 200, 20, "Ragnarok")
    GadgetToolTip(#G_SR_Options_Title, "Fenstertitel des Ragnarok Clients")
    TextGadget(#G_TX_Options_Refresh, 230, 45, 150, 15, "Refreshtime (ms)")
    StringGadget(#G_SR_Options_Refresh, 230, 60, 150, 20, "")
    GadgetToolTip(#G_SR_Options_Refresh, "Zeitverzögerung in der Daten vom Client neu eingelesen werden")
    ButtonGadget(#G_BN_Options_Refresh, 385, 60, 45, 20, "Set")
    CheckBoxGadget(#G_CH_Options_Sounds, 230, 85, 150, 15, "Geräusche")
    CheckBoxGadget(#G_CH_Options_JobSprite, 230, 100, 150, 15, "Berufesprites anzeigen")
    CheckBoxGadget(#G_CH_Options_WThread, 230, 120, 150, 15, "Thread benutzen")
    CheckBoxGadget(#G_CH_Options_Loging, 230, 135, 150, 15, "Loging")
    GadgetToolTip(#G_CH_Options_Loging, "Das Log Fenster aktivieren")
    CheckBoxGadget(#G_CH_Options_G15, 230, 155, 150, 15, "G15 LCD")
    GadgetToolTip(#G_CH_Options_G15, "Aktiviert G15 LCD Display Suport")
    CheckBoxGadget(#G_CH_Options_Autoupdate, 230, 175, 150, 15, "Updatecheck bei Start")
    ButtonGadget(#G_BN_Options_Update, 380, 173, 70, 20, "Prüfen")
    CheckBoxGadget(#G_CH_Options_OnTop, 230, 190, 150, 15, "Immer im Vordergrund")
    GadgetToolTip(#G_CH_Options_OnTop, #PrgName + " befindet sich immer im Vordergrund")
    CheckBoxGadget(#G_CH_Options_Opacity, 230, 205, 150, 15, "Transparents")
    GadgetToolTip(#G_CH_Options_Opacity, "Fenster Transparent darstellen")
    CheckBoxGadget(#G_CH_Options_Magnetic, 230, 220, 150, 15, "Magnetische Fenster")
    GadgetToolTip(#G_CH_Options_Magnetic, "Fenster werden vom Arbeitsbereich angezogen")
    CheckBoxGadget(#G_CH_Options_MoveAllWin, 230, 235, 150, 15, "Alle Fenster bewegen")
    GadgetToolTip(#G_CH_Options_MoveAllWin, "Alle Fenster bewegen sich mit dem Hauptfenster mit")
    TextGadget(#G_TX_Options_Screenshotdelay, 390, 240, 60, 15, "Verzögerung")
    CheckBoxGadget(#G_CH_Options_BaseUPScreenshot, 230, 255, 150, 15, "Screenshot bei BaseUP")
    SpinGadget(#G_SN_Options_BaseUPDelay, 390, 255, 50, 20, #MinScreenDelay, #MaxScreenDelay, #PB_Spin_Numeric)
    GadgetToolTip(#G_SN_Options_BaseUPDelay, "Verzögerung in Milisekunden nach BaseUP um Screenshot auszulösen")
    CheckBoxGadget(#G_CH_Options_JobUPScreenshot, 230, 270, 150, 15, "Screenshot bei JobUP")
    SpinGadget(#G_SN_Options_JobUPDelay, 390, 278, 50, 20, #MinScreenDelay, #MaxScreenDelay, #PB_Spin_Numeric)
    GadgetToolTip(#G_SN_Options_JobUPDelay, "Verzögerung in Milisekunden nach JobUP um Screenshot auszulösen")
    TextGadget(#G_TX_Options_ROFolder, 230, 305, 180, 15, "Ragnarok Ordner")
    StringGadget(#G_SR_Options_ROFolder, 230, 320, 180, 20, "", #PB_String_ReadOnly)
    ButtonGadget(#G_BN_Options_FOFolder, 415, 320, 30, 20, "...")
    
    Global lWndID_Options.l = WindowID(#Win_Options)
    DisableWindow(#Win_Options, 1)
Else
    MsgBox_Error("Fenster 'Options' konnte nicht erstellt werden"): End
EndIf
;- WinContact
If OpenWindow(#Win_Contact, -1, -1, 360, 340, "Kontakt", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Main))
    TextGadget(#G_TX_Contact_Name, 5, 5, 350, 15, "Name:")
    StringGadget(#G_SR_Contact_Name, 5, 20, 350, 20, "")
    TextGadget(#G_TX_Contact_Mail, 5, 45, 350, 15, "eMail-Adresse:")
    StringGadget(#G_SR_Contact_Mail, 5, 60, 350, 20, "")
    ComboBoxGadget(#G_SR_Contact_About, 5, 100, 350, 20, #PB_ComboBox_Editable)
    AddGadgetItem(#G_SR_Contact_About, -1, "Allgemein")
    AddGadgetItem(#G_SR_Contact_About, -1, "Frage")
    AddGadgetItem(#G_SR_Contact_About, -1, "Vorschlag")
    AddGadgetItem(#G_SR_Contact_About, -1, "Fehlerreport")
    AddGadgetItem(#G_SR_Contact_About, -1, "Feedback")
    TextGadget(#G_TX_Contact_About, 5, 85, 350, 15, "Betreff:")
    StringGadget(#G_SR_Contact_Text, 5, 130, 350, 175, "", #ES_MULTILINE|#ES_AUTOVSCROLL|#WS_VSCROLL|#ES_NOHIDESEL)
    ButtonGadget(#G_BN_Contact_Cancel, 200, 310, 75, 25, "Abbrechen")
    ButtonGadget(#G_BN_Contact_Send, 280, 310, 75, 25, "Senden")
    
    Global lWndID_Contact.l = WindowID(#Win_Contact)
    DisableWindow(#Win_Contact, 1)
Else
    MsgBox_Error("Fenster 'Contact' konnte nicht erstellt werden"): End
EndIf
;- WinLog
If OpenWindow(#Win_Log, -1, -1, 350, 135, #PrgName + " Log", #PB_Window_Invisible|#PB_Window_SystemMenu|#PB_Window_SizeGadget, WindowID(#Win_Main))
    ListIconGadget(#G_LI_Log_LogView, 0, 0, WindowWidth(#Win_Log), WindowHeight(#Win_Log), "Event", 10, #LVS_NOSORTHEADER|#LVS_NOCOLUMNHEADER|#PB_ListIcon_FullRowSelect)
    SetGadgetItemAttribute(#G_LI_Log_LogView, -1, #PB_ListIcon_ColumnWidth, Window_GetClientWidth(GadgetID(#G_LI_Log_LogView)), 0)
    
    Global lWndID_Log.l = WindowID(#Win_Log)
    Global lWndW_Log.l = Window_GetWidth(#Win_Log)
    Global lWndH_Log.l = Window_GetHeight(#Win_Log)
    DisableWindow(#Win_Log, 1)
Else
    MsgBox_Error("Fenster 'Log' konnte nicht erstellt werden"): End
EndIf
;- WinInfo
If OpenWindow(#Win_Info, -1, -1, 280, 285, "Informationen", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Main))
    ImageGadget(#G_IG_Info_Logo, 5, 0, 233, 100, hInfoLogo)
    DisableGadget(#G_IG_Info_Logo, 1)
    EditorGadget(#G_ED_Info_Text, 5, 100, 270, 150, #ES_READONLY)
    SetGadgetText(#G_ED_Info_Text, #Info)
    ButtonGadget(#G_BN_Info_Close, 100, 255, 80, 24, "OK")
    
    Global lWndID_Info.l = WindowID(#Win_Info)
    DisableWindow(#Win_Info, 1)
Else
    MsgBox_Error("Fenster 'Info' konnte nicht erstellt werden"): End
EndIf

Procedure WindowOpacity(Bool)
    Protected lOpacity.l, lNext.l
    
    If Bool >= 1
        lOpacity = Preferences\opacityv
    Else
        lOpacity = 255
    EndIf
    
    For lNext = #Win_Main To #Win_Info
        Window_SetLayeredStyle(lNext, Bool)
        Window_SetOpacity(lNext, lOpacity)
    Next
    
EndProcedure

Procedure ShowWindows()
    If IsWindowVisible_(WindowID(#Win_Main)) <> 0
        HideWindow(#Win_Main, 1)
        
        ShowWindow\Options = IsWindowVisible_(WindowID(#Win_Options))
        ShowWindow\Contact = IsWindowVisible_(WindowID(#Win_Contact))
        ShowWindow\Log =     IsWindowVisible_(WindowID(#Win_Log))
        ShowWindow\Info =    IsWindowVisible_(WindowID(#Win_Info))
        
        If ShowWindow\Options >= 1: HideWindow(#Win_Options, 1): DisableWindow(#Win_Options, 1): EndIf
        If ShowWindow\Contact >= 1: HideWindow(#Win_Contact, 1): DisableWindow(#Win_Contact, 1): EndIf
        If ShowWindow\Log >= 1:     HideWindow(#Win_Log, 1):     DisableWindow(#Win_Log, 1):     EndIf
        If ShowWindow\Info >= 1:    HideWindow(#Win_Info, 1):    DisableWindow(#Win_Info, 1):    EndIf
        
        SetMenuItemText(#Menu_PopUp, #Mnu_SysTray_Show, "Zeigen")
    Else
        HideWindow(#Win_Main, 0)
        
        If ShowWindow\Options >= 1: HideWindow(#Win_Options, 0): DisableWindow(#Win_Options, 0): EndIf
        If ShowWindow\Contact >= 1: HideWindow(#Win_Contact, 0): DisableWindow(#Win_Contact, 0): EndIf
        If ShowWindow\Log >= 1:     HideWindow(#Win_Log, 0):     DisableWindow(#Win_Log, 0):     EndIf
        If ShowWindow\Info >= 1:    HideWindow(#Win_Info, 0):    DisableWindow(#Win_Info, 0):    EndIf
        
        SetMenuItemText(#Menu_PopUp, #Mnu_SysTray_Show, "Verstecken")
    EndIf
EndProcedure

Procedure ShowClient()
    If lHandle = 0
        lHandle = FindWindow_(#ClientTitle, @Preferences\title)
    EndIf
    
    If IsWindow_(lHandle) <> 0
        If IsWindowVisible_(lHandle) >= 1
            ShowWindow_(lHandle, #SW_MINIMIZE)
            ShowWindow_(lHandle, #SW_HIDE)
        Else
            ShowWindow_(lHandle, #SW_NORMAL)
        EndIf
    EndIf
EndProcedure

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
    SetGadgetItemText(#G_LI_Options_Adr, 10,  Hex(Adr\hp), 1)
    SetGadgetItemText(#G_LI_Options_Adr, 11,  Hex(Adr\mhp), 1)
    SetGadgetItemText(#G_LI_Options_Adr, 12,  Hex(Adr\sp), 1)
    SetGadgetItemText(#G_LI_Options_Adr, 13,  Hex(Adr\msp), 1)
    
    SetGadgetText(#G_SR_Options_Title, Preferences\title)
    SetGadgetText(#G_SR_Options_Refresh, Str(Preferences\refreshtr))
    SetGadgetState(#G_CH_Options_Sounds, Preferences\sounds)
    SetGadgetState(#G_CH_Options_JobSprite, Preferences\ssprites)
    SetGadgetState(#G_CH_options_WThread, Preferences\wthread)
    SetGadgetState(#G_CH_Options_Loging, Preferences\loging)
    SetGadgetState(#G_CH_Options_G15, Preferences\g15)
    SetGadgetState(#G_CH_Options_Autoupdate, Preferences\autoupdate)
    SetGadgetState(#G_CH_Options_OnTop, Preferences\ontop)
    SetGadgetState(#G_CH_Options_Magnetic, Preferences\magnetic)
    SetGadgetState(#G_CH_Options_Opacity, Preferences\opacity)
    SetGadgetState(#G_CH_Options_MoveAllWin, Preferences\moveallwin)
    SetGadgetState(#G_CH_Options_AutoUpdateAdr, Preferences\adrupdate)
    SetGadgetState(#G_CH_Options_BaseUPScreenshot, Preferences\buscreen)
    SetGadgetState(#G_SN_Options_BaseUPDelay, Preferences\busdelay)
    SetGadgetState(#G_CH_Options_JobUPScreenshot, Preferences\juscreen)
    SetGadgetState(#G_SN_Options_JobUPDelay, Preferences\jusdelay)
    SetGadgetText(#G_SR_Options_ROFolder, Preferences\rofolder)
EndProcedure

Procedure SendFeedback()
    Protected sName.s
    Protected sMail.s
    Protected sSubjekt.s
    Protected sMessage.s
    
    sName = Trim(GetGadgetText(#G_SR_Contact_Name))
    If sName = ""
        MsgBox_Exclamation("Kein Name angegeben")
        ProcedureReturn 0
    EndIf
    
    sMail = Trim(GetGadgetText(#G_SR_Contact_Mail))
    If sMail = "" Or FindString(sMail, ".", 1) <= 1 Or FindString(sMail, "@", 1) >= 1
        If MessageRequester("Hinweiss", "Keine oder ungültige eMail-Adresse engegeben." + #CRLF$ + #CRLF$ + "Bedenken Sie bitte, das Sie somit keine Antwort beckommen." + #CRLF$ + #CRLF$ + "Fortsetzen?", #MB_YESNO|#MB_ICONEXCLAMATION) = #IDNO
            ProcedureReturn 0
        EndIf
    Else
        If FindString(sMail, ".", 1) = 0 Or FindString(sMail, "@", 1) = 0
            MsgBox_Exclamation("Ungültige eMail-Adresse")
            ProcedureReturn 0
        EndIf
    EndIf
    
    sSubjekt = Trim(GetGadgetText(#G_SR_Contact_About))
    If sSubjekt = ""
        MsgBox_Exclamation("Kein Betreff angegeben")
        ProcedureReturn 0
    EndIf
    
    sMessage = Trim(GetGadgetText(#G_SR_Contact_Text))
    If sMessage = ""
        MsgBox_Exclamation("Keine Nachricht eingegeben")
        ProcedureReturn 0
    EndIf
    
    If lInitNetwork <> 0
        Protected hMail.l, lResult.l
        
        hMail = CreateMail(0, sMail, sSubjekt)
        If hMail <> 0
            SetMailBody(0, "Nachricht mit " + #PrgName + #CRLF$ + "Name: " + sName + #CRLF$ + #CRLF$ + sMessage)
            
            AddMailRecipient(0, #Mail, #PB_Mail_To)
            
            lResult = SendMail(0, #SMTP, 25, 1)
            
            Repeat
                While WindowEvent(): Wend
            Until MailProgress(0) = #PB_Mail_Error Or MailProgress(0) = #PB_Mail_Finished
            
            If MailProgress(0) = #PB_Mail_Finished
                MsgBox_Information("Nachricht wurde erfolgreich versendet!")
                ProcedureReturn 1
            Else
                MsgBox_Error("Fehler beim senden")
                ProcedureReturn 0
            EndIf
            
        Else
            MsgBox_Error("Fehler beim senden")
        EndIf
        
    EndIf
    
EndProcedure

Procedure ChangeAdr()
    Protected lSel.l, lNewAdr.s
    
    lSel = GetGadgetState(#G_LI_Options_Adr)
    If lSel <> -1
        
        lNewAdr = InputRequester("Adresse", "Neue Adresse:", GetGadgetItemText(#G_LI_Options_Adr, lSel, 1))
        
        If lNewAdr <> GetGadgetItemText(#G_LI_Options_Adr, lSel, 1) And Trim(lNewAdr) <> ""
            
            If ValidHexString(lNewAdr) = 0 Or Hex2Dec(lNewAdr) <= 0 Or Hex2Dec(lNewAdr) >= 9999999
                MsgBox_Exclamation("Ungültige Eingabe" + #CRLF$ + "Gültiger Bereich: " + Hex(0) + " - " + Hex(9999999))
                ProcedureReturn 0
            EndIf
            
            Select lSel
                Case 0:  Adr\name  = Hex2Dec(lNewAdr)
                Case 1:  Adr\blvl  = Hex2Dec(lNewAdr)
                Case 2:  Adr\jlvl  = Hex2Dec(lNewAdr)
                Case 3:  Adr\bexp  = Hex2Dec(lNewAdr)
                Case 4:  Adr\bexpn = Hex2Dec(lNewAdr)
                Case 5:  Adr\jexp  = Hex2Dec(lNewAdr)
                Case 6:  Adr\jexpn = Hex2Dec(lNewAdr)
                Case 7:  Adr\jcls  = Hex2Dec(lNewAdr)
                Case 8:  Adr\zeny  = Hex2Dec(lNewAdr)
                Case 9:  Adr\state = Hex2Dec(lNewAdr)
                Case 10: Adr\hp    = Hex2Dec(lNewAdr)
                Case 11: Adr\mhp   = Hex2Dec(lNewAdr)
                Case 12: Adr\sp    = Hex2Dec(lNewAdr)
                Case 13: Adr\msp   = Hex2Dec(lNewAdr)
            EndSelect
            
            SetGadgetItemText(#G_LI_Options_Adr, lSel, lNewAdr, 1)
        EndIf
    EndIf
    
EndProcedure

Procedure ChangeROFolder()
    Protected sResult.s
    
    If FileSize(Preferences\rofolder) = -2
        sResult = Preferences\rofolder
    Else
        sResult = "C:\"
    EndIf
    
    sResult = PathRequester("Ragnarok Ordner wählen", sResult)
    If sResult <> "" And sResult <> Preferences\rofolder
        If FileSize(sResult) = -2
            
            If Right(sResult, 1) <> "\": sResult + "\": EndIf
            
            Preferences\rofolder = sResult
            
            SetGadgetText(#G_SR_Options_ROFolder, sResult)
        EndIf
    EndIf
    
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

Procedure AddLog(Text$, Type.l = #Log_Info)
    If Preferences\loging >= 1
        
        While CountGadgetItems(#G_LI_Log_LogView) >= Preferences\logingm
            RemoveGadgetItem(#G_LI_Log_LogView, 0)
        Wend
        
        Protected lIcon.l, lColor.l, lSel.l
        
        Select Type
            Case #Log_Info
                lIcon =  ImageList_GetIcon_(hImgList, 14, 0)
                lColor = $CFFFFF
            Case #Log_Error
                lIcon =  ImageList_GetIcon_(hImgList, 13, 0)
                lColor = $CFCFFF
            Case #Log_Warnung
                lIcon =  ImageList_GetIcon_(hImgList, 12, 0)
                lColor = $CFE8FF
            Case #Log_BLevelUP
                lIcon =  ImageList_GetIcon_(hImgList, 18, 0)
                lColor = $FFCFCF
            Case #Log_JLevelUP
                lIcon =  ImageList_GetIcon_(hImgList, 19, 0)
                lColor = $E7FFE7
            Case #Log_REXP
                lIcon =  ImageList_GetIcon_(hImgList, 16, 0)
                lColor = $EBF2E3
            Case #Log_LEXP
                lIcon =  ImageList_GetIcon_(hImgList, 17, 0)
                lColor = $CFD7FF
            Case #Log_RZeny
                lIcon =  ImageList_GetIcon_(hImgList, 8, 0)
                lColor = $EBF2E3
            Case #Log_LZeny
                lIcon =  ImageList_GetIcon_(hImgList, 9, 0)
                lColor = $CFD7FF
                
            Case #Log_SPReceived
            Case #Log_HPReceived
                lIcon =  ImageList_GetIcon_(hImgList, 16, 0)
                lColor = $EBF2E3
                
            Case #Log_SPLost
            Case #Log_HpLost
                lIcon =  ImageList_GetIcon_(hImgList, 17, 0)
                lColor = $CFD7FF
                
            Default:
        EndSelect
        
        lSel = CountGadgetItems(#G_LI_Log_LogView)
        
        AddGadgetItem(#G_LI_Log_LogView, -1, FormatDate("%hh.%ii.%ss", Date()) + " " + Text$, lIcon)
        SetGadgetItemColor(#G_LI_Log_LogView, lSel, #PB_Gadget_BackColor, lColor, 0)
        
        SetGadgetItemAttribute(#G_LI_Log_LogView, -1, #PB_ListIcon_ColumnWidth, Window_GetClientWidth(GadgetID(#G_LI_Log_LogView)), 0)
        SendMessage_(GadgetID(#G_LI_Log_LogView), #LVM_ENSUREVISIBLE, CountGadgetItems(#G_LI_Log_LogView) - 1, #True)
    EndIf
EndProcedure

Procedure.l G15_RefreshLCD(*ctxo.lgLcdOpenContext, IMGBuffer, Font)
    If Preferences\g15 >= 1
        
        Static hImg.l
        If IsImage(hImg) = 0
            hImg = CreateImage(#PB_Any, 160, 43, 8)
        EndIf
        
        Protected sBase.s, sJob.s, sButton.s
        
        Select Preferences\g15mode
            Case #LCD_SHW_EXP
                sBase = StrF((Charinfo\bexp * 100)/Charinfo\bexpn, 2) + " - " + FormatPointedSize(Charinfo\bexp) + "/" + FormatPointedSize(Charinfo\bexpn)
                sJob =  StrF((Charinfo\jexp * 100)/Charinfo\jexpn, 2) + " - " + FormatPointedSize(Charinfo\jexp) + "/" + FormatPointedSize(Charinfo\jexpn)
                sButton = "EXP"
            Case #LCD_SHW_EXPR
                sBase =   StrF((Charinfo\bexp * 100)/Charinfo\bexpn, 2) + " - " + FormatPointedSize(Charinfo\bexpr)
                sJob =    StrF((Charinfo\jexp * 100)/Charinfo\jexpn, 2) + " - " + FormatPointedSize(Charinfo\jexpr)
                sButton = "Erh.EXP"
            Case #LCD_SHW_EXPN
                sBase = StrF((Charinfo\bexp * 100)/Charinfo\bexpn, 2) + " - " + FormatPointedSize(Charinfo\bexpn - Charinfo\bexp)
                sJob =  StrF((Charinfo\jexp * 100)/Charinfo\jexpn, 2) + " - " + FormatPointedSize(Charinfo\jexpn - Charinfo\jexp)
                sButton = "Ben.EXP"
            Case #LCD_SHW_EXPH
                sBase = StrF((Charinfo\bexp * 100)/Charinfo\bexpn, 2) + " - " + FormatPointedSize(Charinfo\bexph)
                sJob =  StrF((Charinfo\jexp * 100)/Charinfo\jexpn, 2) + " - " + FormatPointedSize(Charinfo\jexph)
                sButton = "EXP/H"
        EndSelect
        
        If StartDrawing(ImageOutput(hImg))
            DrawingFont(FontID(G15_Font))
            Box(0, 0, 160, 43, #LCD_CLR_BG)
            
            If lWatch >= 1
                If UCase(Charinfo\state) <> "LOGIN.RSW"
                    ;Base
                    DrawingMode(#PB_2DDrawing_Transparent)
                    DrawText(0, 0, "B:", #LCD_CLR_FG)
                    DrawText(10, 0, sBase, #LCD_CLR_FG)
                    DrawingMode(#PB_2DDrawing_Outlined)
                    Box(0, TextHeight("B") + 1, 102, 7, #LCD_CLR_FG)
                    DrawingMode(#PB_2DDrawing_Default)
                    Box(1, TextHeight("B") + 2, (Charinfo\bexp * 100)/Charinfo\bexpn, 5, #LCD_CLR_FG)
                    ;Job
                    DrawingMode(#PB_2DDrawing_Transparent)
                    DrawText(0, TextHeight("B") + 9, "J:", #LCD_CLR_FG)
                    DrawText(10, TextHeight("B") + 9, sJob, #LCD_CLR_FG)
                    DrawingMode(#PB_2DDrawing_Outlined)
                    Box(0, TextHeight("B") + TextHeight("J") + 10, 102, 7, #LCD_CLR_FG)
                    DrawingMode(#PB_2DDrawing_Default)
                    Box(1, TextHeight("B") + TextHeight("J") + 11, (Charinfo\jexp * 100)/Charinfo\jexpn, 5, #LCD_CLR_FG)
                    
                    ;Buttons
                    DrawingMode(#PB_2DDrawing_Transparent)
                    DrawText(0, 43 - TextHeight("01.23.45"), FormatTimeGetTime(timeGetTime_() - lStartTime), #LCD_CLR_FG)
                    DrawText(160 - TextWidth(sButton + " Reset"), 43 - TextHeight(sButton + " Reset"), sButton + " Reset", #LCD_CLR_FG)
                Else
                    ;Character Auswahl
                    DrawText(160/2 - TextWidth("Character Auswahl")/2, 43/2 - TextHeight("Character Auswahl")/2, "Character Auswahl", #LCD_CLR_FG)
                EndIf
            Else
                ;Misc
                DrawText(160/2 - TextWidth("ROWatch")/2, 43/2 - TextHeight("ROWatch")/2, "ROWatch", #LCD_CLR_FG)
            EndIf
            
            StopDrawing()
            
            ;Update LCD
            If Img2G15(hImg, G15_IMGBuffer)
                lgLcdUpdateBitmap(*ctxo\device, G15_IMGBuffer, LGLCD_ASYNC_UPDATE(#LGLCD_PRIORITY_NORMAL))
            EndIf
        EndIf
        
    EndIf
EndProcedure

Procedure.l G15_ButtonCallback(device, dwButtons, pContext)
    If Preferences\g15 >= 1
        
        If dwButtons & #LGLCDBUTTON_BUTTON0
            ;Button 1
        EndIf
        If dwButtons & #LGLCDBUTTON_BUTTON1
            ;Button 2
        EndIf
        If dwButtons & #LGLCDBUTTON_BUTTON2
            ;Mode
            If Preferences\g15mode < #LCD_SHW_EXPH
                Preferences\g15mode + 1
            Else
                Preferences\g15mode = #LCD_SHW_EXP
            EndIf
            G15_RefreshLCD(@ctxo, G15_IMGBuffer, G15_Font)
        EndIf
        If dwButtons & #LGLCDBUTTON_BUTTON3
            ;Reset
            lWatchReset = 1
        EndIf
        
    EndIf
EndProcedure

Procedure.l G15_Init()
    Protected sFont.s = ExePath() + "6px2bus.ttf"
    Protected AppTitle.s = #PrgName
    
    G15_IMGBuffer = AllocateMemory(SizeOf(lgLcdBitmap160x43x1))
    
    If G15_IMGBuffer = 0
        MsgBox_Error("G15 ImageBuffer konnte nicht reserviert werden")
        ProcedureReturn 0
    EndIf
    
    If AddFontResource_(@sFont) = 0
        MsgBox_Exclamation("LCD Font konnte nicht geladen werden" + #CRLF$ + "Standardfont wird benutzt")
        G15_Font = LoadFont(#PB_Any, "Courier New", 6, #PB_Font_HighQuality)
    Else
        G15_Font = LoadFont(#PB_Any, "6px2bus", 6, #PB_Font_HighQuality)
    EndIf
    
    If lgLcdInit() <> #ERROR_SUCCESS
        MessageRequester("Fehler", "G15 LCD konnte nicht initialisiert werden!")
        
        FreeMemory(G15_IMGBuffer)
        FreeFont(G15_Font)
        
        ProcedureReturn 0
    EndIf
    
    ctx\appFriendlyName = @AppTitle
    ctx\isPersistent    = 0
    ctx\isAutostartable = 0
    
    ctxo\onSoftbuttonsChanged\softbuttonsChangedCallback = @G15_ButtonCallback()
    ctxo\onSoftbuttonsChanged\softbuttonsChangedContext  = 0
    
    If lgLcdConnect(@ctx) <> #ERROR_SUCCESS
        MessageRequester("Fehler", "Verbindung zum G15 LCD nicht möglich!")
        lgLcdDeInit()
        
        FreeMemory(G15_IMGBuffer)
        FreeFont(G15_Font)
        
        ProcedureReturn 0
    EndIf
    
    ctxo\connection = ctx\connection
    ctxo\index      = 0
    
    If lgLcdOpen(@ctxo) = #ERROR_SUCCESS
        ProcedureReturn 1
    Else
        lgLcdDeInit()
        
        FreeMemory(G15_IMGBuffer)
        FreeFont(G15_Font)
        
        ProcedureReturn 0
    EndIf
EndProcedure

Procedure G15_Close()
    
    lgLcdClose(ctxo\device)
    lgLcdDisconnect(ctx\connection)
    lgLcdDeInit()
    
    If G15_IMGBuffer <> 0
        FreeMemory(G15_IMGBuffer)
    EndIf
    
    If IsFont(G15_Font)
        FreeFont(G15_Font)
    EndIf
    
    Protected sFont.s = ExePath() + "6px2bus.ttf"
    RemoveFontResource_(@sFont)
EndProcedure

Procedure Watch_Start()
    lHandle = FindWindow_(#ClientTitle, @Preferences\title)
    If lHandle <> 0
        
        If Window_GetTitle(lHandle) = Preferences\title
            
            Protected lThread.l
            
            GetWindowThreadProcessId_(lHandle, @lThread)
            If lThread <> 0
                
                lProcess = OpenProcess_(#PROCESS_VM_READ, #Null, lThread)
                If lProcess <> 0
                    
                    lWatch = 1
                    lWatchReset = 1
                    
                    SetGadgetText(#G_BN_Main_Start, "Stop")
                    SetMenuItemText(#Menu_PopUp, #Mnu_SysTray_Start, "Stop")
                    
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
    SetMenuItemText(#Menu_PopUp, #Mnu_SysTray_Start, "Start")
    
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

Procedure Watch_Refresh()
    If lProcess <> 0 And lWatch = 1
        
        ;Read Data
        Static lTimeRD.l
        If timeGetTime_() - lTimeRD >= Preferences\refreshtr
            lTimeRD = timeGetTime_()
            
            ;Client was Closed
            If IsWindow_(lHandle) = 0
                Watch_Stop()
                AddLog("Client wurde geschlossen", #Log_Warnung)
                G15_RefreshLCD(@ctxo, G15_IMGBuffer, G15_Font)
                ProcedureReturn 0
            EndIf
            
            ;Name
            If ReadProcessMemory_(lProcess, Adr\name, *MBString, MemorySize(*MBString), #Null)
                Charinfo\name = Trim(PeekS(*MBString))
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
            ;hp
            If ReadProcessMemory_(lProcess, Adr\hp, *MBValue, MemorySize(*MBValue), #Null)
                Charinfo\hp = PeekL(*MBValue)
            EndIf
            ;max hp
            If ReadProcessMemory_(lProcess, Adr\mhp, *MBValue, MemorySize(*MBValue), #Null)
                Charinfo\mhp = PeekL(*MBValue)
            EndIf
            ;sp
            If ReadProcessMemory_(lProcess, Adr\sp, *MBValue, MemorySize(*MBValue), #Null)
                Charinfo\sp = PeekL(*MBValue)
            EndIf
            ;max sp
            If ReadProcessMemory_(lProcess, Adr\msp, *MBValue, MemorySize(*MBValue), #Null)
                Charinfo\msp = PeekL(*MBValue)
            EndIf            
        EndIf
        
        ;Display..
        If UCase(Charinfo\state) <> "LOGIN.RSW"
            ;Ingame
            
            ;Declare
            Static lLoging.l  ;Loging im Ersten Schleifendurchlauf deaktivieren
            Static sLName.s   ;Character Name (Letzter Durchlauf)
            Static lLBLVL.l   ;BaseLevel (Letzter Durchlauf)
            Static lLJLVL.l   ;JobLevel (Letzter Durchlauf)
            Static lLBEXP.q   ;BaseEXP (Letzter Durchlauf)
            Static lLBEXPN.q  ;BaseEXP Next (Letzter Durchlauf)
            Static lLJEXP.q   ;JobEXP (Letzter Durchlauf)
            Static lLJEXPN.q  ;JobEXP Next (Letzter Durchlauf)
            Static lLLRBEXP.l ;Erhaltene BaseEXP von vorherigen Leveln
            Static lLLRJEXP.l ;Erhaltene JobEXP von vorherigen Leveln
            Static lLRBEXP.q  ;Erhaltene BaseEXP (Letzter Durchlauf)
            Static lLRJEXP.q  ;Erhaltene JobEXP (Letzter Durchlauf)
            Static lLBEXPH.q  ;BaseEXP/h (Letzter Durchlauf)
            Static lLJEXPH.q  ;JobEXP/h (Letzter Durchlauf)
            Static lKillC.l   ;Getötete Gegner
            Static lLKillC.l  ;Getötete Gegner (Letzter Durchlauf)
            Static lLZeny.l   ;Zeny (Letzter Durchlauf)
            Static lRG15.l    ;Refresh G15 LCD
            Static lHp.l
            Static lMaxHp.l
            Static lSp.l
            Static lMaxSp.l
            
            ;Reset
            If lWatchReset <> 0
                lStartTime = timeGetTime_()
                
                Charinfo\sname = Charinfo\name
                Charinfo\sbexp = Charinfo\bexp
                Charinfo\sjexp = Charinfo\jexp
                
                Charinfo\bexph = 0
                Charinfo\jexph = 0
                Charinfo\bexpr = 0
                Charinfo\jexpr = 0
                
                lLoging =  0
                sLName =   ""
                lLBLVL =   Charinfo\blvl
                lLJLVL =   Charinfo\jlvl
                lLBEXP =   -1
                lLBEXPN =  -1
                lLJEXP =   -1
                lLJEXPN =  -1
                lLLRBEXP = 0
                lLLRJEXP = 0
                lLRBEXP =  -1
                lLRJEXP =  -1
                lLBEXPH =  -1
                lLJEXPH =  -1
                lKillC =   -1
                lLKillC =  -2
                lLZeny =   Charinfo\zeny
                lRG15 =    1
                
                lHp = Charinfo\hp
                lMaxHp = Charinfo\mhp
                lSp = Charinfo\sp
                lMaxSp = Charinfo\msp
                
                ClearGadgetItems(#G_LI_Log_LogView)
                
                AddLog("ROWatch Start", #Log_Info)
                
                lWatchReset = 0
                
            EndIf
            
            ;Character changed
            If Charinfo\name <> Charinfo\sname
                lWatchReset = 1
                
            EndIf
            
            ;Name
            If Charinfo\name <> sLName Or Charinfo\blvl <> lLBLVL Or Charinfo\jlvl <> lLJLVL
                sLName = Charinfo\name
                SetGadgetText(#G_TX_Main_NameV, JobClsName(Charinfo\jcls) + " " + sLName + " " + Str(Charinfo\blvl) + "/" + Str(Charinfo\jlvl))
                
            EndIf
            
            ;Time
            If FormatTimeGetTime(timeGetTime_() - lStartTime) <> GetGadgetText(#G_TX_Main_Time)
                SetGadgetText(#G_TX_Main_Time, FormatTimeGetTime(timeGetTime_() - lStartTime))
                
                lRG15 = 1
            EndIf
            
            ;Kills
            If lLBEXP < Charinfo\bexp Or lLJEXP < Charinfo\jexp
                lKillC + 1
            EndIf
            
            If lKillC <> lLKillC
                lLKillC = lKillC
                SetGadgetText(#G_TX_Main_KillsV, Str(lKillC))
                
                lRG15 = 1
            EndIf
            
            ;BaseEXP
            If Charinfo\bexp <> lLBEXP Or Charinfo\bexpn <> lLBEXPN
                
                If lLoging >= 1
                    If Charinfo\bexp > lLBEXP
                        AddLog("BaseEXP erhalten: " + Str(Charinfo\bexp - lLBEXP), #Log_REXP)
                    EndIf
                    If Charinfo\bexp < lLBEXP
                        AddLog("BaseEXP verloren: " + Str(lLBEXP - Charinfo\bexp), #Log_LEXP)
                    EndIf
                EndIf
                
                lLBEXP =  Charinfo\bexp
                lLBEXPN = Charinfo\bexpn
                SetGadgetText(#G_TX_Main_BEXPV, FormatPointedSize(Charinfo\bexp) + "/" + FormatPointedSize(Charinfo\bexpn))
                SetGadgetText(#G_TX_Main_BEXPPV, StrF((Charinfo\bexp * 100)/Charinfo\bexpn, 2) + "%")
                SetGadgetState(#G_PB_Main_BEXP, (Charinfo\bexp * 100) / Charinfo\bexpn)
                
                lRG15 = 1
            EndIf
            
            ;JobEXP
            If Charinfo\jexp <> lLJEXP Or Charinfo\jexpn <> lLJEXPN
                
                If lLoging >= 1
                    If Charinfo\jexp > lLJEXP
                        AddLog("JobEXP erhalten: " + Str(Charinfo\jexp - lLJEXP), #Log_REXP)
                    EndIf
                    If Charinfo\jexp < lLJEXP
                        AddLog("JobEXP verloren: " + Str(lLJEXP - Charinfo\jexp), #Log_REXP)
                    EndIf
                EndIf
                
                lLJEXP =  Charinfo\jexp
                lLJEXPN = Charinfo\jexpn
                SetGadgetText(#G_TX_Main_JEXPV, FormatPointedSize(Charinfo\jexp) + "/" + FormatPointedSize(Charinfo\jexpn))
                SetGadgetText(#G_TX_Main_JEXPPV, StrF((Charinfo\jexp * 100)/Charinfo\jexpn, 2) + "%")
                SetGadgetState(#G_PB_Main_JEXP, (Charinfo\jexp * 100)/Charinfo\jexpn)
                
                lRG15 = 1
            EndIf
            
            ;Received BaseEXP
            Protected lRBEXP.l = Charinfo\bexp - Charinfo\sbexp + lLLRBEXP
            
            If lRBEXP <> lLRBEXP
                lLRBEXP = lRBEXP
                
                If lRBEXP > 0
                    SetGadgetText(#G_TX_Main_RBEXPV, FormatPointedSize(lRBEXP))
                    
                    Charinfo\bexpr = lRBEXP
                Else
                    SetGadgetText(#G_TX_Main_RBEXPV, "0")
                EndIf
                
                lRG15 = 1
            EndIf
            
            ;Received JobEXP
            Protected lRJEXP.l = Charinfo\jexp - Charinfo\sjexp + lLLRJEXP
            
            If lRJEXP <> lLRJEXP
                lLRJEXP = lRJEXP
                
                If lRJEXP > 0
                    SetGadgetText(#G_TX_Main_RJEXPV, FormatPointedSize(lRJEXP))
                    
                    Charinfo\jexpr = lRJEXP
                Else
                    SetGadgetText(#G_TX_Main_RJEXPV, "0")
                EndIf
                
                lRG15 = 1
            EndIf
            
            ;EXP/h
            Protected lSec.l = (timeGetTime_() - lStartTime) / 1000
            
            If lSec > 0
                ;BaseEXP
                Protected lBEXPH.f = Round( (((lRBEXP) / lSec) * 60) * 60, 1)
                
                If lBEXPH <> lLBEXPH
                    lLBEXPH = lBEXPH
                    SetGadgetText(#G_TX_Main_BEXPHV, FormatPointedSize(lBEXPH) + " - " + StrF((lBEXPH * 100)/Charinfo\bexpn, 2) + "%")
                    
                    Charinfo\bexph = lBEXPH
                    
                    lRG15 = 1
                EndIf
                ;JobEXP
                Protected lJEXPH.f = Round( (((lRJEXP) / lSec) * 60) * 60, 1)
                
                If lJEXPH <> lLJEXPH
                    lLJEXPH = lJEXPH
                    SetGadgetText(#G_TX_Main_JEXPHV, FormatPointedSize(lJEXPH) + " - " + StrF((lJEXPH * 100)/Charinfo\jexpn, 2) + "%")
                    
                    Charinfo\jexph = lJEXPH
                    
                    lRG15 = 1
                EndIf
            Else
                If GetGadgetText(#G_TX_Main_BEXPHV) <> "0 - 0.00%"
                    SetGadgetText(#G_TX_Main_BEXPHV, "0 - 0.00%")
                EndIf
                If GetGadgetText(#G_TX_Main_JEXPHV) <> "0 - 0.00%"
                    SetGadgetText(#G_TX_Main_JEXPHV, "0 - 0.00%")
                EndIf
            EndIf
            
            ;LevelUp
            
            ;Base
            If Charinfo\blvl > lLBLVL
                lLBLVL = Charinfo\blvl
                
                lLLRBEXP + lLBEXP - Charinfo\sbexp
                Charinfo\sbexp = 0
                
                lLBEXP = Charinfo\bexp
                
                If lLoging >= 1
                    AddLog("Glückwunsch! Baselevel " + Str(Charinfo\blvl) + " erreicht", #Log_BLevelUP)
                EndIf
                
                If GetForegroundWindow_() = lHandle And Preferences\buscreen >= 1
                    Delay(Preferences\busdelay)
                    PushKey(#VK_SNAPSHOT)
                EndIf
                
            EndIf
            ;Job
            If Charinfo\jlvl > lLJLVL
                lLJLVL = Charinfo\jlvl
                
                lLLRJEXP + lLJEXP - Charinfo\sjexp
                Charinfo\sjexp = 0
                
                lLJEXP = Charinfo\jexp
                
                If lLoging >= 1
                    AddLog("Glückwunsch! Joblevel " + Str(Charinfo\jlvl) + " erreicht", #Log_JLevelUP)
                EndIf
                
                If GetForegroundWindow_() = lHandle And Preferences\juscreen >= 1
                    Delay(Preferences\jusdelay)
                    PushKey(#VK_SNAPSHOT)
                EndIf
                
            EndIf
            
            ;Zeny
            If Charinfo\zeny <> lLZeny
                
                ;Received
                If Charinfo\zeny > lLZeny
                    AddLog("Zeny erhalten: " + FormatPointedSize(Charinfo\zeny - lLZeny), #Log_RZeny)
                EndIf
                ;Lost
                If Charinfo\zeny < lLZeny
                    AddLog("Zeny verloren: " + FormatPointedSize(lLZeny - Charinfo\zeny), #Log_LZeny)
                EndIf
                
                lLZeny = Charinfo\zeny
                
            EndIf
            
            ; HP
            If Charinfo\hp <> lHp                
                ;Received
                If Charinfo\hp > lHp
                    AddLog("HP erhalten: " + FormatPointedSize(Charinfo\hp - lHp), #Log_HPReceived)
                EndIf
                ;Lost
                If Charinfo\hp < lHp
                    AddLog("HP verloren: " + FormatPointedSize(lHp - Charinfo\hp), #Log_HpLost)
                EndIf
                
                lHp = Charinfo\hp                
            EndIf
            
            ; SP
            If Charinfo\sp <> lSp                
                ;Received
                If Charinfo\sp > lSp
                    AddLog("SP erhalten: " + FormatPointedSize(Charinfo\sp - lSp), #Log_HPReceived)
                EndIf
                ;Lost
                If Charinfo\sp < lSp
                    AddLog("SP verloren: " + FormatPointedSize(lSp - Charinfo\sp), #Log_HpLost)
                EndIf
                
                lSp = Charinfo\sp
            EndIf
            
            ;G15
            If Preferences\g15 >= 1 And lRG15 >= 1
                G15_RefreshLCD(@ctxo, G15_IMGBuffer, G15_Font)
            EndIf
            
            lRG15 = 0
            
            ;Loging wieder aktivieren
            If lLoging = 0: lLoging = 1: EndIf
            
        Else
            ;Character Select
            If GetGadgetText(#G_TX_Main_Time) <> "": SetGadgetText(#G_TX_Main_Time, ""): EndIf
            If GetGadgetText(#G_TX_Main_NameV) <> "Character Auswahl"
                SetGadgetText(#G_TX_Main_NameV, "Character Auswahl")
                lWatchReset = 1
                G15_RefreshLCD(@ctxo, G15_IMGBuffer, G15_Font)
            EndIf
            If GetGadgetText(#G_TX_Main_BEXPV)  <> "": SetGadgetText(#G_TX_Main_BEXPV, ""): EndIf
            If GetGadgetText(#G_TX_Main_BEXPPV) <> "": SetGadgetText(#G_TX_Main_BEXPPV, ""): EndIf
            If GetGadgetText(#G_PB_Main_BEXP)   <> "": SetGadgetText(#G_PB_Main_BEXP, ""): EndIf
            If GetGadgetText(#G_TX_Main_JEXPV)  <> "": SetGadgetText(#G_TX_Main_JEXPV, ""): EndIf
            If GetGadgetText(#G_TX_Main_JEXPPV) <> "": SetGadgetText(#G_TX_Main_JEXPPV, ""): EndIf
            If GetGadgetText(#G_PB_Main_JEXP)   <> "": SetGadgetText(#G_PB_Main_JEXP, ""): EndIf
            If GetGadgetText(#G_TX_Main_RBEXPV) <> "": SetGadgetText(#G_TX_Main_RBEXPV, ""): EndIf
            If GetGadgetText(#G_TX_Main_RJEXPV) <> "": SetGadgetText(#G_TX_Main_RJEXPV, ""): EndIf
            If GetGadgetText(#G_TX_Main_BEXPHV) <> "": SetGadgetText(#G_TX_Main_BEXPHV, ""): EndIf
            If GetGadgetText(#G_TX_Main_JEXPHV) <> "": SetGadgetText(#G_TX_Main_JEXPHV, ""): EndIf
            If GetGadgetText(#G_TX_Main_KillsV) <> "": SetGadgetText(#G_TX_Main_KillsV, ""): EndIf
        EndIf
        
        Delay(1)
        
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
        
        ;Moveall
        If Msg = #WM_MOVE And hWnd = lWndID_Main
            Protected Win_MoveX.l, Win_MoveY.l
            Static OldWin_PosX.l, OldWin_PosY.l
            
            
            Win_MoveX = WindowX(#Win_Main) - OldWin_PosX
            Win_MoveY = WindowY(#Win_Main) - OldWin_PosY
            OldWin_PosX = WindowX(#Win_Main)
            OldWin_PosY = WindowY(#Win_Main)
            
            If Preferences\moveallwin >= 1
                ResizeWindow(#Win_Options, WindowX(#Win_Options) + Win_MoveX, WindowY(#Win_Options) + Win_MoveY, #PB_Ignore, #PB_Ignore)
                ResizeWindow(#Win_Contact, WindowX(#Win_Contact) + Win_MoveX, WindowY(#Win_Contact) + Win_MoveY, #PB_Ignore, #PB_Ignore)
                ResizeWindow(#Win_Info, WindowX(#Win_Info) + Win_MoveX, WindowY(#Win_Info) + Win_MoveY, #PB_Ignore, #PB_Ignore)
                ResizeWindow(#Win_Log, WindowX(#Win_Log) + Win_MoveX, WindowY(#Win_Log) + Win_MoveY, #PB_Ignore, #PB_Ignore)
            EndIf
        EndIf
        
        ;Minimize
        If Msg = #WM_SYSCOMMAND And hWnd = lWndID_Main
            If wParam = #SC_MINIMIZE
                ShowWindows()
                Result = 0
            EndIf
        EndIf
        
    EndIf
    
    If hWnd = lWndID_Log
        
        If Msg = #WM_GETMINMAXINFO
            Protected *pMinMax.MINMAXINFO = lParam
            
            If *pMinMax <> 0
                *pMinMax.MINMAXINFO = lParam
                *pMinMax\ptMinTrackSize\x = lWndW_Log
                *pMinMax\ptMinTrackSize\y = lWndH_Log
                *pMinMax\ptMaxTrackSize\x = GetSystemMetrics_(#SM_CXSCREEN)
                *pMinMax\ptMaxTrackSize\y = GetSystemMetrics_(#SM_CYSCREEN)
                Result = 0
            EndIf
        EndIf
        
    EndIf
    
    ProcedureReturn Result
EndProcedure

Procedure SavePreferences()
    
    If CreatePreferences(ExePath() + #IniFile)
        PreferenceComment("Please do not change if you do not know what you're doing!")
        PreferenceComment("")
        
        PreferenceGroup("Win")
        WritePreferenceLong("WinL_Main",    WindowX(#Win_Main))
        WritePreferenceLong("WinT_Main",    WindowY(#Win_Main))
        WritePreferenceLong("WinL_Options", WindowX(#Win_Options))
        WritePreferenceLong("WinT_Options", WindowY(#Win_Options))
        WritePreferenceLong("WinL_Contact", WindowX(#Win_Contact))
        WritePreferenceLong("WinT_Contact", WindowY(#Win_Contact))
        WritePreferenceLong("WinL_Log",     WindowX(#Win_Log))
        WritePreferenceLong("WinT_Log",     WindowY(#Win_Log))
        WritePreferenceLong("WinR_Log",     WindowX(#Win_Log) + Window_GetWidth(#Win_Log))
        WritePreferenceLong("WinB_Log",     WindowY(#Win_Log) + Window_GetHeight(#Win_Log))
        WritePreferenceLong("WinL_Info",    WindowX(#Win_Info))
        WritePreferenceLong("WinT_Info",    WindowY(#Win_Info))
        
        PreferenceGroup("Main")
        WritePreferenceString("Title",        Preferences\title)
        WritePreferenceLong("RefreshTime",    Preferences\refreshtr)
        WritePreferenceLong("Magnetic",       Preferences\magnetic)
        WritePreferenceLong("MagneticValue",  Preferences\magneticv)
        WritePreferenceLong("Opacity",        Preferences\opacity)
        WritePreferenceLong("OpacityValue",   Preferences\opacityv)
        WritePreferenceLong("AutoUpdate",     Preferences\autoupdate)
        WritePreferenceLong("AlwaysOnTop",    Preferences\ontop)
        WritePreferenceLong("Sounds",         Preferences\sounds)
        WritePreferenceLong("ShowSprites",    Preferences\ssprites)
        WritePreferenceLong("WatchThread",    Preferences\wthread)
        WritePreferenceLong("Loging",         Preferences\loging)
        WritePreferenceLong("LogingMax",      Preferences\logingm)
        WritePreferenceLong("G15LCD",         Preferences\g15)
        WritePreferenceLong("G15Mode",        Preferences\g15mode)
        WritePreferenceLong("MoveAllWin",     Preferences\moveallwin)
        WritePreferenceLong("MemAdrUpdate",   Preferences\adrupdate)
        WritePreferenceLong("BUPScreen",      Preferences\buscreen)
        WritePreferenceLong("BUPScreenDelay", Preferences\busdelay)
        WritePreferenceLong("JUPScreen",      Preferences\juscreen)
        WritePreferenceLong("JUPScreenDelay", Preferences\jusdelay)
        WritePreferenceString("ROFolder",     Preferences\rofolder)
        
        PreferenceGroup("Memory")
        WritePreferenceLong("name",  Adr\name)
        WritePreferenceLong("blvl",  Adr\blvl)
        WritePreferenceLong("jlvl",  Adr\jlvl)
        WritePreferenceLong("bexp",  Adr\bexp)
        WritePreferenceLong("bexpn", Adr\bexpn)
        WritePreferenceLong("jexp",  Adr\jexp)
        WritePreferenceLong("jexpn", Adr\jexpn)
        WritePreferenceLong("jcls",  Adr\jcls)
        WritePreferenceLong("zeny",  Adr\zeny)
        WritePreferenceLong("state", Adr\state)
        WritePreferenceLong("hp",    Adr\hp)
        WritePreferenceLong("mhp",   Adr\mhp)
        WritePreferenceLong("sp",    Adr\sp)
        WritePreferenceLong("msp",   Adr\msp)
        
        ClosePreferences()
    Else
        MsgBox_Exclamation("Einstellungen konnten nicht gespeichert werden" + #CRLF$ + "'" + ExePath() + "ROWatch.inf" + "'")
    EndIf
EndProcedure

Procedure LoadPreferences()
    
    OpenPreferences(ExePath() + #IniFile)
    
    PreferenceGroup("Win")
    Protected W.RECT
    
    W\left =   ReadPreferenceLong("WinL_Main", -1)
    W\top  =   ReadPreferenceLong("WinT_Main", -1)
    Window_ResizeEx(#Win_Main, @W, 0)
    W\left =   ReadPreferenceLong("WinL_Options", -1)
    W\top  =   ReadPreferenceLong("WinT_Options", -1)
    Window_ResizeEx(#Win_Options, @W, 0)
    W\left =   ReadPreferenceLong("WinL_Contact", -1)
    W\top  =   ReadPreferenceLong("WinT_Contact", -1)
    Window_ResizeEx(#Win_Contact, @W, 0)
    W\left =   ReadPreferenceLong("WinL_Log", -1)
    W\top  =   ReadPreferenceLong("WinT_Log", -1)
    W\right =  ReadPreferenceLong("WinR_Log", -1)
    W\bottom = ReadPreferenceLong("WinB_Log", -1)
    Window_ResizeEx(#Win_Log, @W, 1)
    W\left =   ReadPreferenceLong("WinL_Info", -1)
    W\top  =   ReadPreferenceLong("WinT_Info", -1)
    Window_ResizeEx(#Win_Info, @W, 0)
    
    PreferenceGroup("Main")
    ;Title
    Preferences\title = ReadPreferenceString("Title", "Ragnarok")
    If Trim(Preferences\title) = ""
        Preferences\title = #ClientTitle
    Else
        Preferences\title = Left(Preferences\title, 50)
    EndIf
    
    ;RefreshTime
    Preferences\refreshtr = ReadPreferenceLong("RefreshTime", 25)
    If Preferences\refreshtr < #MinRefreshTime Or Preferences\refreshtr > #MaxRefreshTime
        Preferences\refreshtr = 25
    EndIf
    
    ;Magnetic
    If ReadPreferenceLong("Magnetic", 1) >= 1
        Preferences\magnetic = 1
    Else
        Preferences\magnetic = 0
    EndIf
    
    Preferences\magneticv = ReadPreferenceLong("MagneticValue", #Magnetic)
    If Preferences\magneticv < 5 Or Preferences\magneticv > 80
        Preferences\magneticv = #Magnetic
    EndIf
    
    ;Opacity
    Preferences\opacity = ReadPreferenceLong("Opacity", 0)
    Preferences\opacityv = ReadPreferenceLong("OpacityValue", #Opacity)
    
    If Preferences\opacityv < 25 Or Preferences\opacityv > 230
        Preferences\opacityv = #Opacity
    EndIf
    
    If Preferences\opacity >= 1
        Preferences\opacity = 1
        WindowOpacity(1)
    Else
        Preferences\opacity = 0
    EndIf
    
    ;Automatisches Update
    If ReadPreferenceLong("AutoUpdate", 0) >= 1
        Preferences\autoupdate = 1
    Else
        Preferences\autoupdate = 0
    EndIf
    
    ;OnTop
    Preferences\ontop = ReadPreferenceLong("AlwaysOnTop", 0)
    If Preferences\ontop >= 1
        Preferences\ontop = 1
        Window_AlwaysOnTop(#Win_Main, 1)
    Else
        Preferences\ontop = 0
    EndIf
    
    ;Sounds
    If ReadPreferenceLong("Sounds", 0) >= 1
        Preferences\sounds = 1
    Else
        Preferences\sounds = 0
    EndIf
    
    ;JobSprites
    If ReadPreferenceLong("ShowSprites", 1) >= 1
        Preferences\ssprites = 1
    Else
        Preferences\ssprites = 0
    EndIf
    
    ;WatchThread
    If ReadPreferenceLong("WatchThread", 1) >= 1
        Preferences\wthread = 1
    Else
        Preferences\wthread = 0
    EndIf
    
    ;Loging
    If ReadPreferenceLong("Loging", 1) >= 1
        Preferences\loging = 1
    Else
        Preferences\loging = 0
    EndIf
    
    Preferences\logingm = ReadPreferenceLong("LogingMax", 1000)
    If Preferences\logingm < 10 Or Preferences\logingm > 10000
        Preferences\logingm = 100
    EndIf
    
    ;G15 LCD
    If ReadPreferenceLong("G15LCD", 0) >= 1
        Preferences\g15 = 1
    Else
        Preferences\g15 = 0
    EndIf
    
    ;G15 Mode
    Preferences\g15mode = ReadPreferenceLong("G15Mode", #LCD_SHW_EXP)
    If Preferences\g15mode < #LCD_SHW_EXP Or Preferences\g15mode > #LCD_SHW_EXPH
        Preferences\g15mode = #LCD_SHW_EXP
    EndIf
    
    ;Move all Windows
    If ReadPreferenceLong("MoveAllWin", 1) >= 1
        Preferences\moveallwin = 1
    Else
        Preferences\moveallwin = 0
    EndIf
    
    ;Auto AdrUpdate
    If ReadPreferenceLong("MemAdrUpdate", 0) >= 1
        Preferences\adrupdate = 1
    Else
        Preferences\adrupdate = 0
    EndIf
    
    ;BaseUP Screenshot
    If ReadPreferenceLong("BUPScreen", 0) >= 1
        Preferences\buscreen = 1
    Else
        Preferences\buscreen = 0
    EndIf
    
    ;BaseUP Screenshot Delay
    Preferences\busdelay = ReadPreferenceLong("BUPScreenDelay", 1200)
    If Preferences\busdelay < #MinScreenDelay Or Preferences\busdelay > #MaxScreenDelay
        Preferences\busdelay = 0
    EndIf
    
    ;JobUP Screenshot
    If ReadPreferenceLong("JUPScreen", 0) >= 1
        Preferences\juscreen = 1
    Else
        Preferences\juscreen = 0
    EndIf
    
    ;JobUP Screenshot Delay
    Preferences\jusdelay = ReadPreferenceLong("JUPScreenDelay", 500)
    If Preferences\jusdelay < #MinScreenDelay Or Preferences\jusdelay > #MaxScreenDelay
        Preferences\jusdelay = 0
    EndIf
    
    ;RO Folder
    Preferences\rofolder = ReadPreferenceString("ROFolder", "")
    If FileSize(Preferences\rofolder) <> -2
        Preferences\rofolder = ""
    Else
        If Right(Preferences\rofolder, 1) <> "\"
            Preferences\rofolder + "\"
        EndIf
    EndIf
    
    PreferenceGroup("Memory")
    Adr\name =  ReadPreferenceLong("name",  #Adr_name)
    If Adr\name <= 0 Or Adr\name >= 9999999: Adr\name = #Adr_name: EndIf
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
    
    Adr\hp = ReadPreferenceLong("hp", #Adr_hp)
    If Adr\hp <= 0 Or Adr\hp >= 9999999: Adr\hp = #Adr_hp: EndIf
    Adr\mhp = ReadPreferenceLong("mhp", #Adr_mhp)
    If Adr\mhp <= 0 Or Adr\mhp >= 9999999: Adr\mhp = #Adr_mhp: EndIf
    
    Adr\sp = ReadPreferenceLong("sp", #Adr_sp)
    If Adr\sp <= 0 Or Adr\sp >= 9999999: Adr\sp = #Adr_sp: EndIf
    Adr\msp = ReadPreferenceLong("msp", #Adr_msp)
    If Adr\msp <= 0 Or Adr\msp >= 9999999: Adr\msp = #Adr_msp: EndIf
    
    ClosePreferences()
EndProcedure

Procedure Update(Message)
    Protected sTempFile.s, lNewVers.l, lResult.l, sVers.s
    
    If lInitNetwork = 0
        lResult = -1 ;InitNetwork failed
    Else
        sTempFile = GetTemporaryDirectory() + "~" + Str(Random(10000)) + "rw~.tmp"
        If ReceiveHTTPFile(#URLUpdate1, sTempFile) <> 0
            If OpenPreferences(sTempFile) <> 0
                PreferenceGroup("version")
                lNewVers = ReadPreferenceLong("rowatch", -1)
                If lNewVers = -1 Or lNewVers = 0
                    lResult = -4 ;Missing version Info into File
                Else
                    sVers = "Aktuellste Version: " + StrF(lNewVers/100, 2) + #CRLF$
                    sVers + "Installierte Version: " + StrF(#PrgVers/100, 2) + #CRLF$ + #CRLF$
                    If lNewVers > #PrgVers
                        If MessageRequester("Update", sVers + "Eine neue Version ist verfügbar, Updateseite öffnen?", #MB_YESNO|#MB_ICONQUESTION) = #IDYES
                            RunProgram(#URLHomepage)
                        EndIf
                    Else
                        If Message >= 1
                            MessageRequester("Update", sVers + "Glückwunsch, Sie haben bereits die neuste Version!", #MB_OK|#MB_ICONINFORMATION)
                        EndIf
                    EndIf
                    lResult = 1
                EndIf
                ClosePreferences()
                DeleteFile(sTempFile)
            Else
                lResult = -3 ;Preferences cant open
            EndIf
        Else
            lResult = -2 ;Versionfile cant download
        EndIf
    EndIf
    
    ProcedureReturn lResult
EndProcedure

Procedure UpdateAdr(Message)
    Protected hFile.l, sTempFile.s, lResult.l, sVers.s, lRead.s, lChange.l
    
    If lInitNetwork = 0
        lResult = -1 ;InitNetwork failed
    Else
        sTempFile = GetTemporaryDirectory() + "~" + Str(Random(10000)) + "rw~.tmp"
        If ReceiveHTTPFile(#URLUpdate2, sTempFile) <> 0
            If OpenPreferences(sTempFile) <> 0
                PreferenceGroup("memory")
                
                lChange = 0
                
                ;Name
                lRead = Trim(ReadPreferenceString("name", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\name
                        Adr\name = Val(lRead)
                        lChange = 1
                    EndIf
                EndIf
                ;BaseLevel
                lRead = Trim(ReadPreferenceString("blvl", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\blvl
                        Adr\blvl = Val(lRead)
                        lChange = 1
                    EndIf
                EndIf
                ;JobLevel
                lRead = Trim(ReadPreferenceString("jlvl", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\jlvl
                        Adr\jlvl = Val(lRead)
                        lChange = 1
                    EndIf
                EndIf
                ;BaseEXP
                lRead = Trim(ReadPreferenceString("bexp", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\bexp
                        Adr\bexp = Val(lRead)
                        lChange = 1
                    EndIf
                EndIf
                ;BaseEXP Next
                lRead = Trim(ReadPreferenceString("bexpn", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\bexpn
                        Adr\bexpn = Val(lRead)
                        lChange = 1
                    EndIf
                EndIf
                ;JobEXP
                lRead = Trim(ReadPreferenceString("jexp", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\jexp
                        Adr\jexp = Val(lRead)
                        lChange = 1
                    EndIf
                EndIf
                ;JobEXP Next
                lRead = Trim(ReadPreferenceString("jexpn", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\jexpn
                        Adr\jexpn = Val(lRead)
                        lChange = 1
                    EndIf
                EndIf
                ;JobClass
                lRead = Trim(ReadPreferenceString("jcls", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\jcls
                        Adr\jcls = Val(lRead)
                        lChange = 1
                    EndIf
                EndIf
                ;Zeny
                lRead = Trim(ReadPreferenceString("zeny", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\zeny
                        Adr\zeny = Val(lRead)
                        lChange = 1
                    EndIf
                EndIf
                ;State
                lRead = Trim(ReadPreferenceString("state", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\state
                        Adr\state = Val(lRead)
                        lChange = 1
                    EndIf
                EndIf
                
                ; hp
                lRead = Trim(ReadPreferenceString("hp", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\hp
                        Adr\hp = Val(lRead)
                    EndIf                    
                EndIf
                ; max hp
                lRead = Trim(ReadPreferenceString("mhp", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\mhp
                        Adr\mhp = Val(lRead)
                    EndIf                    
                EndIf
                ; sp
                lRead = Trim(ReadPreferenceString("sp", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\sp
                        Adr\sp = Val(lRead)
                    EndIf                    
                EndIf
                ; max sp
                lRead = Trim(ReadPreferenceString("msp", ""))
                If lRead <> ""
                    If Val(lRead) <> Adr\msp
                        Adr\msp = Val(lRead)
                    EndIf                    
                EndIf
                                
                If lChange <> 0
                    If Message = 1
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
                        
                        SetGadgetItemText(#G_LI_Options_Adr, 10,  Hex(Adr\hp), 1)
                        SetGadgetItemText(#G_LI_Options_Adr, 11,  Hex(Adr\mhp), 1)
                        SetGadgetItemText(#G_LI_Options_Adr, 12,  Hex(Adr\sp), 1)
                        SetGadgetItemText(#G_LI_Options_Adr, 13,  Hex(Adr\msp), 1)
                        
                        MsgBox_Information("Adressen wurden erfolgreich aktuallisiert")
                    EndIf
                Else
                    If Message = 1: MsgBox_Information("Sie haben die aktuellsten Adressen"): EndIf
                EndIf
                
                lResult = 1
                ClosePreferences()
                DeleteFile(sTempFile)
            Else
                lResult = -3 ;Preferences cant open
            EndIf
        Else
            lResult = -2 ;Versionfile cant download
        EndIf
    EndIf
    
    ProcedureReturn lResult
EndProcedure

Procedure EndApp()
    ;SetWindowCallback(0)
    
    If lProcess <> 0 And lHandle <> 0
        CloseHandle_(lProcess)
    EndIf
    
    SavePreferences()
    
    CloseHandle_(lSemaphore)
    
    If Preferences\g15 >= 1
        G15_Close()
    EndIf
    
    End
EndProcedure

;- Start
lSemaphore = CreateSemaphore_(#Null, #Null, 1, "748A7FDA-0CE1-4FDB-B598-E863F86F8944")
If lSemaphore <> 0 And GetLastError_() = #ERROR_ALREADY_EXISTS
    CloseHandle_(lSemaphore)
    End
EndIf

SetWindowCallback(@WindowCallback())

LoadPreferences()

AddSysTrayIcon(0, WindowID(#Win_Main), LoadIcon_(GetModuleHandle_(0), "#1"))
SysTrayIconToolTip(0, #PrgName)

;Updatecheck
If Preferences\autoupdate >= 1
    Update(0)
EndIf
If Preferences\adrupdate >= 1
    UpdateAdr(0)
EndIf

;G15
If Preferences\g15 >= 1
    If G15_Init() <> 0
        Preferences\g15 = 1
        G15_RefreshLCD(@ctxo, G15_IMGBuffer, G15_Font)
    Else
        Preferences\g15 = 0
    EndIf
EndIf

;Timer
If Preferences\wthread >= 1
    SetTimer_(WindowID(#Win_Main), #Timer, 1, @Watch_Refresh())
EndIf

DisableWindow(#Win_Main, 0)
HideWindow(#Win_Main, 0)

Repeat
    lWindowEvent = WaitWindowEvent(1)
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
                    ShowWindows()
                    
                Case #Mnu_SysTray_ROShow
                    ShowClient()
                    
                Case #Mnu_SysTray_Client
                    If FileSize(Preferences\rofolder + "Ragexe.exe") > 0
                        RunProgram(Preferences\rofolder + "Ragexe.exe", "1rag1", Preferences\rofolder)
                    EndIf
                    
                Case #Mnu_SysTray_Patcher
                    If FileSize(Preferences\rofolder + "Ragnarok.exe") > 0
                        RunProgram(Preferences\rofolder + "Ragnarok.exe", "", Preferences\rofolder)
                    EndIf
                    
                Case #Mnu_SysTray_Setup
                    If FileSize(Preferences\rofolder + "Setup.exe") > 0
                        RunProgram(Preferences\rofolder + "Setup.exe", "", Preferences\rofolder)
                    EndIf
                    
                Case #Mnu_SysTray_Folder_Main
                    If FileSize(Preferences\rofolder) = -2
                        RunProgram("explorer.exe", Preferences\rofolder, Preferences\rofolder)
                    EndIf
                    
                Case #Mnu_SysTray_Folder_Emblem
                    If FileSize(Preferences\rofolder + "emblem\") = -2
                        RunProgram("explorer.exe", Preferences\rofolder + "emblem\", Preferences\rofolder)
                    EndIf
                    
                Case #Mnu_SysTray_Folder_ScreenShot
                    If FileSize(Preferences\rofolder + "screenshot\") = -2
                        RunProgram("explorer.exe", Preferences\rofolder + "screenshot\", Preferences\rofolder)
                    EndIf
                    
                Case #Mnu_SysTray_Folder_Skin
                    If FileSize(Preferences\rofolder + "skin\") = -2
                        RunProgram("explorer.exe", Preferences\rofolder + "skin\", Preferences\rofolder)
                    EndIf
                    
                Case #Mnu_SysTray_Start
                    Select UCase(GetMenuItemText(#Menu_PopUp, #Mnu_SysTray_Start))
                        Case "START"
                            If lWatch = 0
                                Watch_Start()
                            EndIf
                        Case "STOP"
                            If lWatch = 1
                                Watch_Stop()
                            EndIf
                    EndSelect
                    
                Case #Mnu_SysTray_Reset
                    If lWatch = 1
                        lWatchReset = 1
                    EndIf
                    
                Case #Mnu_SysTray_Log
                    If IsWindowVisible_(WindowID(#Win_Log)) = 0
                        HideWindow(#Win_Log, 0)
                        DisableWindow(#Win_Log, 0)
                    Else
                        HideWindow(#Win_Log, 1)
                        DisableWindow(#Win_Log, 1)
                    EndIf
                    
                Case #Mnu_SysTray_Update
                    If Update(1) = 0
                        MsgBox_Error("Update fehlgeschlagen")
                    EndIf
                    
                Case #Mnu_SysTray_Contact
                    If lInitNetwork = 0
                        MsgBox_Error("Netzwerk konnte nicht initialisiert werden")
                    Else
                        ResizeWindow(#Win_Contact, (GetSystemMetrics_(#SM_CXSCREEN)/2) - (Window_GetWidth(#Win_Contact)/2), (GetSystemMetrics_(#SM_CYSCREEN)/2) - (Window_GetWidth(#Win_Contact)/2), #PB_Ignore, #PB_Ignore)
                        SetGadgetText(#G_SR_Contact_Name, "Annonym")
                        SetGadgetText(#G_SR_Contact_Mail, "")
                        SetGadgetState(#G_SR_Contact_About, 0)
                        SetGadgetText(#G_SR_Contact_Text, "")
                        HideWindow(#Win_Contact, 0)
                        DisableWindow(#Win_Contact, 0)
                    EndIf
                    
                Case #Mnu_SysTray_Info
                    HideWindow(#Win_Info, 0)
                    DisableWindow(#Win_Info, 0)
                    
                Case #Mnu_SysTray_End
                    EndApp()
                    
            EndSelect
            
            ;- Event_Gadget
        Case #PB_Event_Gadget
            Select lEventWindow
                    
                    ;Main
                Case #Win_Main
                    Select lEventGadget
                            
                        Case #G_BN_Main_Options
                            If IsWindowVisible_(WindowID(#Win_Options)) = 0
                                InitOptions()
                                HideWindow(#Win_Options, 0)
                                DisableWindow(#Win_Options, 0)
                            Else
                                HideWindow(#Win_Options, 1)
                            EndIf
                            
                        Case #G_BN_Main_Log
                            If IsWindowVisible_(WindowID(#Win_Log)) = 0
                                HideWindow(#Win_Log, 0)
                                DisableWindow(#Win_Log, 0)
                            Else
                                HideWindow(#Win_Log, 1)
                                DisableWindow(#Win_Log, 1)
                            EndIf
                            
                        Case #G_BN_Main_Reset
                            If lWatch = 1
                                lWatchReset = 1
                            EndIf
                            
                        Case #G_BN_Main_Start
                            Select UCase(GetGadgetText(#G_BN_Main_Start))
                                Case "START"
                                    If lWatch = 0
                                        Watch_Start()
                                    EndIf
                                Case "STOP"
                                    If lWatch = 1
                                        Watch_Stop()
                                        G15_RefreshLCD(@ctxo, G15_IMGBuffer, G15_Font)
                                    EndIf
                            EndSelect
                            
                    EndSelect
                    
                    ;Options
                Case #Win_Options
                    Select lEventGadget
                        Case #G_BN_Options_UpdateAdr
                            If UpdateAdr(1) = 0
                                MsgBox_Error("Update fehlgeschlagen")
                            EndIf
                            
                        Case #G_SR_Options_Title
                            If lEventType = #PB_EventType_Change
                                Preferences\title = Trim(GetGadgetText(#G_SR_Options_Title))
                            EndIf
                            
                        Case #G_BN_Options_Refresh
                            ChangeRefreshTime()
                            
                        Case #G_CH_Options_Autoupdate
                            Preferences\autoupdate = GetGadgetState(#G_CH_Options_Autoupdate)
                            
                        Case #G_BN_Options_Update
                            If Update(1) = 0
                                MsgBox_Error("Update fehlgeschlagen")
                            EndIf
                            
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
                                    SetTimer_(WindowID(#Win_Main), #Timer, 1, @Watch_Refresh())
                                Case 0
                                    KillTimer_(WindowID(#Win_Main), #Timer)
                                    MsgBox_Exclamation("Hiermit wird die aktuallisierung Threadlos durchgeführt," + #CRLF$ + "dadurch können Ereignisse schneller verpasst werden." + #CRLF$ + "Diese Einstellung ist nicht zu empfehlen!")
                            EndSelect
                            Preferences\wthread = GetGadgetState(#G_CH_options_WThread)
                            
                        Case #G_CH_Options_Magnetic
                            Preferences\magnetic = GetGadgetState(#G_CH_Options_Magnetic)
                            
                        Case #G_CH_Options_Opacity
                            Preferences\opacity = GetGadgetState(#G_CH_Options_Opacity)
                            WindowOpacity(Preferences\opacity)
                            
                        Case #G_CH_Options_Loging
                            Preferences\loging = GetGadgetState(#G_CH_Options_Loging)
                            
                        Case #G_CH_Options_G15
                            If GetGadgetState(#G_CH_Options_G15) = 1
                                If G15_Init() <> 0
                                    Preferences\g15 = 1
                                    G15_RefreshLCD(@ctxo, G15_IMGBuffer, G15_Font)
                                Else
                                    SetGadgetState(#G_CH_Options_G15, 0)
                                EndIf
                            Else
                                Preferences\g15 = 0
                                G15_Close()
                            EndIf
                            
                        Case #G_CH_Options_MoveAllWin
                            Preferences\moveallwin = GetGadgetState(#G_CH_Options_MoveAllWin)
                            
                        Case #G_LI_Options_Adr
                            If lEventType = #PB_EventType_LeftDoubleClick Or lEventType = #PB_EventType_RightClick
                                ChangeAdr()
                            EndIf
                            
                        Case #G_CH_Options_AutoUpdateAdr
                            Preferences\adrupdate = GetGadgetState(#G_CH_Options_AutoUpdateAdr)
                            
                        Case #G_CH_Options_BaseUPScreenshot
                            Preferences\buscreen = GetGadgetState(#G_CH_Options_BaseUPScreenshot)
                            
                        Case #G_SN_Options_BaseUPDelay
                            Preferences\busdelay = GetGadgetState(#G_SN_Options_BaseUPDelay)
                            
                        Case #G_CH_Options_JobUPScreenshot
                            Preferences\juscreen = GetGadgetState(#G_CH_Options_JobUPScreenshot)
                            
                        Case #G_SN_Options_JobUPDelay
                            Preferences\jusdelay = GetGadgetState(#G_SN_Options_JobUPDelay)
                            
                        Case #G_BN_Options_FOFolder
                            ChangeROFolder()
                            
                    EndSelect
                    
                    ;Contact
                Case #Win_Contact
                    Select lEventGadget
                            
                        Case #G_BN_Contact_Cancel
                            DisableWindow(#Win_Contact, 1)
                            HideWindow(#Win_Contact, 1)
                            
                        Case #G_BN_Contact_Send
                            SendFeedback()
                            
                    EndSelect
                    
                    ;Info
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
                    If IsWindowVisible_(WindowID(#Win_Main)) <> 0
                        SetForegroundWindow_(WindowID(#Win_Main))
                    EndIf
                    
                Case #PB_EventType_LeftDoubleClick
                    ShowWindows()
                    
                Case #PB_EventType_RightClick
                    DisplayPopupMenu(#Menu_PopUp, WindowID(#Win_Main))
                    
            EndSelect
            
            ;- Event_SizeWindow
        Case #PB_Event_SizeWindow
            Select lEventWindow
                    
                Case #Win_Log
                    ResizeGadget(#G_LI_Log_LogView, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_Log), WindowHeight(#Win_Log))
                    SetGadgetItemAttribute(#G_LI_Log_LogView, -1, #PB_ListIcon_ColumnWidth, Window_GetClientWidth(GadgetID(#G_LI_Log_LogView)), 0)
                    If CountGadgetItems(#G_LI_Log_LogView) > 0
                        SendMessage_(GadgetID(#G_LI_Log_LogView), #LVM_ENSUREVISIBLE, CountGadgetItems(#G_LI_Log_LogView) - 1, #True)
                    EndIf
                    
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

End

Error: ;OnError
Define sErrMsg.s
Define sErrErr.s
Define sErrMod.s

sErrErr = ErrorMessage(ErrorCode()) + #CRLF$
sErrErr + "Zeile: " + Str(ErrorLine()) + #CRLF$

sErrMsg = "Es ist ein Fehler aufgetreten." + #CRLF$
sErrMsg + "Bitte melden Sie denn Fehler dem Programmautor." + #CRLF$ + #CRLF$
sErrMsg + sErrErr + #CRLF$
sErrMsg + "Fehlermeldung befindet sich in Zwischenablage!"

SetClipboardText(sErrErr)
MessageRequester("Fehler", sErrMsg, #MB_OK|#MB_ICONERROR)

End

; IDE Options = PureBasic 4.60 (Windows - x86)
; CursorPosition = 1276
; FirstLine = 1240
; Folding = --------------------------------------------------------------
; EnableXP
; EnableOnError
; Executable = ROWatch.exe
; CPU = 1
; CompileSourceDirectory
; EnableCompileCount = 1490
; EnableBuildCount = 482
; EnableExeConstant
; IncludeVersionInfo
; VersionField0 = 1,1,3,0
; VersionField1 = 1,1,3,0
; VersionField2 = PureSoft
; VersionField3 = ROWatch
; VersionField4 = 1.13
; VersionField5 = 1.13
; VersionField6 = Ragnarok Online EXP-Tool
; VersionField7 = ROWatchFinal.exe
; VersionField8 = ROWatch.exe
; VersionField9 = Copyright©Kai Gartenschläger, 2007
; VersionField13 = dergarty@freenet.de
; VersionField14 = http://purefreak.pu.funpic.de/
; AddResource = Ressource.rc