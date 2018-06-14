EnableExplicit

;- Declare
Enumeration
  #Win_Hide
  #Win_Main
EndEnumeration

Enumeration
  #G_LI_Main_Charinfo

  #G_TX_Main_Name
  #G_TX_Main_BaseLevel
  #G_TX_Main_JobLevel
  #G_TX_Main_BaseEXP
  #G_TX_Main_JobEXP
  #G_TX_Main_Map

  #G_CH_Main_OnTop
  #G_BN_Main_Start
EndEnumeration

Global lAdr_Name.l  =     $7BA13C
Global lAdr_BLevel.l =    $78BA28
Global lAdr_JLevel.l =    $78BA34
Global lAdr_BEXP.l =      $78BA24
Global lAdr_BEXPN.l =     $78BA30
Global lAdr_JEXP.l =      $78BAE0
Global lAdr_JEXPN.l =     $78BADC
Global lAdr_JCLS.l =      $78BA20
Global lAdr_Zeny.l =      $78BACC
Global lAdr_Guild.l =     $28122BB
Global lAdr_Party.l =     $EEE2629
Global lAdr_Map.l =       $764430

Structure Pref
  stitle.s
  lrefresht.l
  lmagnetic.b
  lmagneticv.l
EndStructure
Global Preferences.Pref

Preferences\stitle =        "Ragnarok"
Preferences\lrefresht =     1000
Preferences\lmagnetic =     0
Preferences\lmagneticv =    25

Structure Charinfo
  name.s
  blvl.l
  jlvl.l
  bexp.l
  bexpn.l
  jexp.l
  jexpn.l
  jcls.l
  zeny.l

  guild.s
  party.s

  Map.s

  killc.l

  sbexp.l
  sjexp.l

  rbexp.l  ;Gemachte BaseEXP
  rjexp.l  ;Gemachte JobEXP
EndStructure
Global Charinfo.Charinfo

;BaseEXP Table
#MaxBaseEXP = 99
Structure BEXP
  n.l ;Normale Cls
  a.l ;Advance Cls
  h.l ;Homunculus Cls
EndStructure
Global Dim BaseEXP.BEXP(#MaxBaseEXP)

BaseEXP(0)\n  = 0        :BaseEXP(0)\a  = 0         :BaseEXP(0)\h  = 0
BaseEXP(1)\n  = 9        :BaseEXP(1)\a  = 10        :BaseEXP(1)\h  = 50
BaseEXP(2)\n  = 16       :BaseEXP(2)\a  = 18        :BaseEXP(2)\h  = 110
BaseEXP(3)\n  = 25       :BaseEXP(3)\a  = 28        :BaseEXP(3)\h  = 180
BaseEXP(4)\n  = 36       :BaseEXP(4)\a  = 40        :BaseEXP(4)\h  = 260
BaseEXP(5)\n  = 77       :BaseEXP(5)\a  = 85        :BaseEXP(5)\h  = 350
BaseEXP(6)\n  = 112      :BaseEXP(6)\a  = 123       :BaseEXP(6)\h  = 630
BaseEXP(7)\n  = 153      :BaseEXP(7)\a  = 168       :BaseEXP(7)\h  = 950
BaseEXP(8)\n  = 200      :BaseEXP(8)\a  = 220       :BaseEXP(8)\h  = 1310
BaseEXP(9)\n  = 253      :BaseEXP(9)\a  = 278       :BaseEXP(9)\h  = 1710
BaseEXP(10)\n = 320      :BaseEXP(10)\a = 400       :BaseEXP(10)\h = 2150
BaseEXP(11)\n = 385      :BaseEXP(11)\a = 481       :BaseEXP(11)\h = 3180
BaseEXP(12)\n = 490      :BaseEXP(12)\a = 613       :BaseEXP(12)\h = 4300
BaseEXP(13)\n = 585      :BaseEXP(13)\a = 731       :BaseEXP(13)\h = 5510
BaseEXP(14)\n = 700      :BaseEXP(14)\a = 875       :BaseEXP(14)\h = 6810
BaseEXP(15)\n = 830      :BaseEXP(15)\a = 1038      :BaseEXP(15)\h = 8200
BaseEXP(16)\n = 970      :BaseEXP(16)\a = 1213      :BaseEXP(16)\h = 10800
BaseEXP(17)\n = 1120     :BaseEXP(17)\a = 1400      :BaseEXP(17)\h = 13560
BaseEXP(18)\n = 1260     :BaseEXP(18)\a = 1575      :BaseEXP(18)\h = 16480
BaseEXP(19)\n = 1420     :BaseEXP(19)\a = 1775      :BaseEXP(19)\h = 19560
BaseEXP(20)\n = 1620     :BaseEXP(20)\a = 2268      :BaseEXP(20)\h = 22800
BaseEXP(21)\n = 1860     :BaseEXP(21)\a = 2604      :BaseEXP(21)\h = 28090
BaseEXP(22)\n = 1990     :BaseEXP(22)\a = 2786      :BaseEXP(22)\h = 33630
BaseEXP(23)\n = 2240     :BaseEXP(23)\a = 3136      :BaseEXP(23)\h = 39420
BaseEXP(24)\n = 2504     :BaseEXP(24)\a = 3506      :BaseEXP(24)\h = 45460
BaseEXP(25)\n = 2905     :BaseEXP(25)\a = 4130      :BaseEXP(25)\h = 51750
BaseEXP(26)\n = 3426     :BaseEXP(26)\a = 4796      :BaseEXP(26)\h = 61150
BaseEXP(27)\n = 3934     :BaseEXP(27)\a = 5508      :BaseEXP(27)\h = 70910
BaseEXP(28)\n = 4474     :BaseEXP(28)\a = 6264      :BaseEXP(28)\h = 81030
BaseEXP(29)\n = 6889     :BaseEXP(29)\a = 9645      :BaseEXP(29)\h = 91510
BaseEXP(30)\n = 7995     :BaseEXP(30)\a = 12392     :BaseEXP(30)\h = 102350
BaseEXP(31)\n = 9174     :BaseEXP(31)\a = 14220     :BaseEXP(31)\h = 117580
BaseEXP(32)\n = 10425    :BaseEXP(32)\a = 16159     :BaseEXP(32)\h = 133300
BaseEXP(33)\n = 11745    :BaseEXP(33)\a = 18209     :BaseEXP(33)\h = 149510
BaseEXP(34)\n = 13967    :BaseEXP(34)\a = 21649     :BaseEXP(34)\h = 166210
BaseEXP(35)\n = 15775    :BaseEXP(35)\a = 24451     :BaseEXP(35)\h = 183400
BaseEXP(36)\n = 17678    :BaseEXP(36)\a = 27401     :BaseEXP(36)\h = 206480
BaseEXP(37)\n = 19677    :BaseEXP(37)\a = 30499     :BaseEXP(37)\h = 230200
BaseEXP(38)\n = 21733    :BaseEXP(38)\a = 33748     :BaseEXP(38)\h = 254560
BaseEXP(39)\n = 30543    :BaseEXP(39)\a = 47342     :BaseEXP(39)\h = 279560
BaseEXP(40)\n = 34212    :BaseEXP(40)\a = 58160     :BaseEXP(40)\h = 305200
BaseEXP(41)\n = 38065    :BaseEXP(41)\a = 64711     :BaseEXP(41)\h = 338450
BaseEXP(42)\n = 42102    :BaseEXP(42)\a = 71573     :BaseEXP(42)\h = 372510
BaseEXP(43)\n = 46323    :BaseEXP(43)\a = 78749     :BaseEXP(43)\h = 407380
BaseEXP(44)\n = 53026    :BaseEXP(44)\a = 90144     :BaseEXP(44)\h = 443060
BaseEXP(45)\n = 58419    :BaseEXP(45)\a = 99312     :BaseEXP(45)\h = 479550
BaseEXP(46)\n = 64041    :BaseEXP(46)\a = 108870    :BaseEXP(46)\h = 525590
BaseEXP(47)\n = 69892    :BaseEXP(47)\a = 118816    :BaseEXP(47)\h = 572630
BaseEXP(48)\n = 75973    :BaseEXP(48)\a = 129154    :BaseEXP(48)\h = 620670
BaseEXP(49)\n = 102468   :BaseEXP(49)\a = 174196    :BaseEXP(49)\h = 669710
BaseEXP(50)\n = 115254   :BaseEXP(50)\a = 213220    :BaseEXP(50)\h = 719750
BaseEXP(51)\n = 128692   :BaseEXP(51)\a = 238080    :BaseEXP(51)\h = 781500
BaseEXP(52)\n = 142784   :BaseEXP(52)\a = 264150    :BaseEXP(52)\h = 844460
BaseEXP(53)\n = 157528   :BaseEXP(53)\a = 291427    :BaseEXP(53)\h = 908630
BaseEXP(54)\n = 178184   :BaseEXP(54)\a = 329640    :BaseEXP(54)\h = 974010
BaseEXP(55)\n = 196300   :BaseEXP(55)\a = 363155    :BaseEXP(55)\h = 1040600
BaseEXP(56)\n = 215198   :BaseEXP(56)\a = 398116    :BaseEXP(56)\h = 1121280
BaseEXP(57)\n = 234879   :BaseEXP(57)\a = 434526    :BaseEXP(57)\h = 1203400
BaseEXP(58)\n = 255341   :BaseEXP(58)\a = 472381    :BaseEXP(58)\h = 1286960
BaseEXP(59)\n = 330188   :BaseEXP(59)\a = 610848    :BaseEXP(59)\h = 1371960
BaseEXP(60)\n = 365914   :BaseEXP(60)\a = 731828    :BaseEXP(60)\h = 1458400
BaseEXP(61)\n = 403224   :BaseEXP(61)\a = 806448    :BaseEXP(61)\h = 1561530
BaseEXP(62)\n = 442116   :BaseEXP(62)\a = 884232    :BaseEXP(62)\h = 1666350
BaseEXP(63)\n = 482590   :BaseEXP(63)\a = 965180    :BaseEXP(63)\h = 1772860
BaseEXP(64)\n = 536948   :BaseEXP(64)\a = 1073896   :BaseEXP(64)\h = 1881060
BaseEXP(65)\n = 585191   :BaseEXP(65)\a = 1170382   :BaseEXP(65)\h = 1990950
BaseEXP(66)\n = 635278   :BaseEXP(66)\a = 1270556   :BaseEXP(66)\h = 2120350
BaseEXP(67)\n = 687211   :BaseEXP(67)\a = 1374422   :BaseEXP(67)\h = 2251710
BaseEXP(68)\n = 740988   :BaseEXP(68)\a = 1481576   :BaseEXP(68)\h = 2385030
BaseEXP(69)\n = 925400   :BaseEXP(69)\a = 1850800   :BaseEXP(69)\h = 2520310
BaseEXP(70)\n = 1473746  :BaseEXP(70)\a = 3389616   :BaseEXP(70)\h = 2657550
BaseEXP(71)\n = 1594058  :BaseEXP(71)\a = 3666333   :BaseEXP(71)\h = 2817340
BaseEXP(72)\n = 1718928  :BaseEXP(72)\a = 3953534   :BaseEXP(72)\h = 2979380
BaseEXP(73)\n = 1848355  :BaseEXP(73)\a = 4251217   :BaseEXP(73)\h = 3143670
BaseEXP(74)\n = 1982340  :BaseEXP(74)\a = 4559382   :BaseEXP(74)\h = 3310210
BaseEXP(75)\n = 2230113  :BaseEXP(75)\a = 5129260   :BaseEXP(75)\h = 3479000
BaseEXP(76)\n = 2386162  :BaseEXP(76)\a = 5488173   :BaseEXP(76)\h = 3673600
BaseEXP(77)\n = 2547417  :BaseEXP(77)\a = 5859059   :BaseEXP(77)\h = 3870760
BaseEXP(78)\n = 2713878  :BaseEXP(78)\a = 6241919   :BaseEXP(78)\h = 4070480
BaseEXP(79)\n = 3206160  :BaseEXP(79)\a = 7374168   :BaseEXP(79)\h = 4272760
BaseEXP(80)\n = 3681024  :BaseEXP(80)\a = 9570662   :BaseEXP(80)\h = 4477600
BaseEXP(81)\n = 4022472  :BaseEXP(81)\a = 10458427  :BaseEXP(81)\h = 4711730
BaseEXP(82)\n = 4377024  :BaseEXP(82)\a = 11380262  :BaseEXP(82)\h = 4948750
BaseEXP(83)\n = 4744680  :BaseEXP(83)\a = 12336168  :BaseEXP(83)\h = 5188660
BaseEXP(84)\n = 5125440  :BaseEXP(84)\a = 13326144  :BaseEXP(84)\h = 5431460
BaseEXP(85)\n = 5767272  :BaseEXP(85)\a = 14994907  :BaseEXP(85)\h = 5677150
BaseEXP(86)\n = 6204000  :BaseEXP(86)\a = 16130400  :BaseEXP(86)\h = 5955830
BaseEXP(87)\n = 6655464  :BaseEXP(87)\a = 17304206  :BaseEXP(87)\h = 6237750
BaseEXP(88)\n = 7141664  :BaseEXP(88)\a = 18516326  :BaseEXP(88)\h = 6522910
BaseEXP(89)\n = 7602600  :BaseEXP(89)\a = 19766760  :BaseEXP(89)\h = 6811310
BaseEXP(90)\n = 9738720  :BaseEXP(90)\a = 29216160  :BaseEXP(90)\h = 7102950
BaseEXP(91)\n = 11649960 :BaseEXP(91)\a = 34949880  :BaseEXP(91)\h = 7431500
BaseEXP(92)\n = 13643520 :BaseEXP(92)\a = 40930560  :BaseEXP(92)\h = 7763660
BaseEXP(93)\n = 18339300 :BaseEXP(93)\a = 55017900  :BaseEXP(93)\h = 8099430
BaseEXP(94)\n = 23836800 :BaseEXP(94)\a = 71510400  :BaseEXP(94)\h = 8438810
BaseEXP(95)\n = 35658000 :BaseEXP(95)\a = 106974000 :BaseEXP(95)\h = 8781800
BaseEXP(96)\n = 48687000 :BaseEXP(96)\a = 146061000 :BaseEXP(96)\h = 9165840
BaseEXP(97)\n = 58135000 :BaseEXP(96)\a = 174405000 :BaseEXP(97)\h = 9553880
BaseEXP(98)\n = 99999998 :BaseEXP(98)\a = 343210000 :BaseEXP(98)\h = 9945920
BaseEXP(99)\n = 0        :BaseEXP(99)\a = 0         :BaseEXP(99)\h = 0

;JobEXP Tables
#MaxJobEXP = 99
Structure JEXP
  nn.l ;Novice Normal
  na.l ;Novice Advance
  nm.l ;2nd Cls
  av.l ;Advance
  sn.l ;Super Novice
EndStructure
Global Dim JobEXP.JEXP(#MaxJobEXP)

JobEXP(0)\nn = 0       :JobEXP(0)\na = 0
JobEXP(1)\nn = 10      :JobEXP(0)\na = 11
JobEXP(2)\nn = 18      :JobEXP(0)\na = 20
JobEXP(3)\nn = 28      :JobEXP(0)\na = 31
JobEXP(4)\nn = 40      :JobEXP(0)\na = 44
JobEXP(5)\nn = 91      :JobEXP(0)\na = 100
JobEXP(6)\nn = 151     :JobEXP(0)\na = 166
JobEXP(7)\nn = 205     :JobEXP(0)\na = 226
JobEXP(8)\nn = 268     :JobEXP(0)\na = 295
JobEXP(9)\nn = 340     :JobEXP(0)\na = 374


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

Global lHandle.l
Global lPThread.l
Global lProcess.l
Global lWatch.l

Global *MemBuffer = AllocateMemory(200)
Global *MemB_EXP = AllocateMemory(8)

Global lWindowEvent.l
Global lEventWindow.l
Global lEventGadget.l
Global lEventMenu.l
Global lEventType.l

;- Procedures Main
Procedure.s ExePath()
  Protected Path$
  Path$ = Space(#MAX_PATH)
  GetModuleFileName_(0, @Path$, #MAX_PATH)
  ProcedureReturn GetPathPart(Path$)
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

Macro MsgBox_Error(Text, Title = "Fehler")
  MessageRequester(Title, Text, #MB_OK|#MB_ICONERROR)
EndMacro

Macro MsgBox_Exclamation(Text, Title = "Hinweis")
  MessageRequester(Title, Text, #MB_OK|#MB_ICONEXCLAMATION)
EndMacro

Procedure.l Window_GetClientWidth(Window)
  If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
    If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
    Protected C.RECT
    GetClientRect_(Window, @C)
    ProcedureReturn C\right - C\left
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

;- Win_MainHide
If OpenWindow(#Win_Hide, 0, 0, 0, 0, "", #PB_Window_Invisible)
  DisableWindow(#Win_Hide, 1)
Else
  MsgBox_Error("Fenster 'MainHide' konnte nicht erstellt werden"): End
EndIf
;- Win_Main
If OpenWindow(#Win_Main, 0, 0, 440, 240, "ROWatch", #PB_Window_Invisible|#PB_Window_SystemMenu|#PB_Window_ScreenCentered, WindowID(#Win_Hide))
  ListIconGadget(#G_LI_Main_Charinfo, 2, 2, WindowWidth(#Win_Main) - 4, WindowHeight(#Win_Main) - 40, "Typ", 140, #PB_ListIcon_GridLines|#LVS_NOSORTHEADER|#LVS_NOCOLUMNHEADER)
  AddGadgetColumn(#G_LI_Main_Charinfo, 1, "Value", Window_GetClientWidth(GadgetID(#G_LI_Main_Charinfo)) - GetGadgetItemAttribute(#G_LI_Main_Charinfo, -1, #PB_ListIcon_ColumnWidth, 0))
  AddGadgetItem(#G_LI_Main_Charinfo, -1, "Charachter")
  AddGadgetItem(#G_LI_Main_Charinfo, -1, "BEXP")
  AddGadgetItem(#G_LI_Main_Charinfo, -1, "JEXP")
  AddGadgetItem(#G_LI_Main_Charinfo, -1, "")
  AddGadgetItem(#G_LI_Main_Charinfo, -1, "Erhaltene BEXP")
  AddGadgetItem(#G_LI_Main_Charinfo, -1, "Erhaltene JEXP")
  AddGadgetItem(#G_LI_Main_Charinfo, -1, "")
  AddGadgetItem(#G_LI_Main_Charinfo, -1, "Kills")
  AddGadgetItem(#G_LI_Main_Charinfo, -1, "")
  AddGadgetItem(#G_LI_Main_Charinfo, -1, "Karte")
  CheckBoxGadget(#G_CH_Main_OnTop, 5, WindowHeight(#Win_Main) - 20, 180, 15, "Im Vordergrund")
  ButtonGadget(#G_BN_Main_Start, WindowWidth(#Win_Main) - 85, WindowHeight(#Win_Main) - 30, 80, 25, "Start")

  DisableWindow(#Win_Main, 1)
Else
  MsgBox_Error("Fenster 'Main' konnte nicht erstellt werden"): End
EndIf

Procedure.s JobClsName(CLS)
  Protected lNext.l

  For lNext = 0 To #MaxJobCls
    If JobClass(lNext)\v = CLS
      ProcedureReturn JobClass(lNext)\n
    EndIf
  Next

  ProcedureReturn "Unknown"
EndProcedure

Procedure StartWatch()
  lHandle = FindWindow_(@Preferences\stitle, @Preferences\stitle)
  If lHandle <> 0

    If Window_GetTitle(lHandle) = Preferences\stitle

      GetWindowThreadProcessId_(lHandle, @lPThread)
      If lPThread <> 0

        lProcess = OpenProcess_(#PROCESS_VM_READ, #Null, lPThread)
        If lProcess <> 0

          Charinfo\sbexp = -1
          Charinfo\sjexp = -1
          Charinfo\killc = 0

          lWatch = 1
          SetGadgetText(#G_BN_Main_Start, "Stop")

        Else
          MsgBox_Exclamation("Ragnarok Threadprocess konnte nicht geöffnet werden")
        EndIf

      Else
        MsgBox_Exclamation("Ragnarok thread nicht gefunden")
      EndIf

    Else
      MsgBox_Exclamation("Ragnarok wurde nicht gefunden")
    EndIf
  Else
    MsgBox_Exclamation("Ragnarok wurde nicht gefunden")
  EndIf
EndProcedure

Procedure StopWatch()
  SetGadgetText(#G_BN_Main_Start, "Start")
  lWatch = 0
  lHandle = 0
  lPThread = 0
  lProcess = 0
  CloseHandle_(lPThread)

  SetGadgetItemText(#G_LI_Main_Charinfo, 0, "", 1)
  SetGadgetItemText(#G_LI_Main_Charinfo, 1, "", 1)
  SetGadgetItemText(#G_LI_Main_Charinfo, 2, "", 1)
  SetGadgetItemText(#G_LI_Main_Charinfo, 4, "", 1)
  SetGadgetItemText(#G_LI_Main_Charinfo, 5, "", 1)
  SetGadgetItemText(#G_LI_Main_Charinfo, 7, "", 1)
  SetGadgetItemText(#G_LI_Main_Charinfo, 9, "", 1)
EndProcedure

Procedure RefreshEvent()
  If lHandle <> 0 And lPThread <> 0 And lWatch = 1
    Static lTime.l
    Static lLBEXP.l, lLJEXP.l, lName.s
    Static lLBLVL.l, lLJLVL.l

    If timeGetTime_() - lTime >= Preferences\lrefresht
      lTime = timeGetTime_()

      ;Client closed
      If IsWindow_(lHandle) = 0
        StopWatch()
        ProcedureReturn 0
      EndIf

      ;Name
      If ReadProcessMemory_(lProcess, lAdr_Name, *MemBuffer, MemorySize(*MemBuffer), #Null)
        Charinfo\name = Trim(PeekS(*MemBuffer))
      EndIf
      ;BaseLevel
      If ReadProcessMemory_(lProcess, lAdr_BLevel, *MemB_EXP, MemorySize(*MemB_EXP), #Null)
        Charinfo\blvl = PeekL(*MemB_EXP)
      EndIf
      ;JobLevel
      If ReadProcessMemory_(lProcess, lAdr_JLevel, *MemB_EXP, MemorySize(*MemB_EXP), #Null)
        Charinfo\jlvl = PeekL(*MemB_EXP)
      EndIf
      ;BaseEXP
      If ReadProcessMemory_(lProcess, lAdr_BEXP, *MemB_EXP, MemorySize(*MemB_EXP), #Null)
        Charinfo\bexp = PeekL(*MemB_EXP)
      EndIf
      ;JobEXP
      If ReadProcessMemory_(lProcess, lAdr_JEXP, *MemB_EXP, MemorySize(*MemB_EXP), #Null)
        Charinfo\jexp = PeekL(*MemB_EXP)
      EndIf
      ;BaseEXP Next
      If ReadProcessMemory_(lProcess, lAdr_BEXPN, *MemB_EXP, MemorySize(*MemB_EXP), #Null)
        Charinfo\bexpn = PeekL(*MemB_EXP)
      EndIf
      ;JobEXP Next
      If ReadProcessMemory_(lProcess, lAdr_JEXPN, *MemB_EXP, MemorySize(*MemB_EXP), #Null)
        Charinfo\jexpn = PeekL(*MemB_EXP)
      EndIf
      ;JobCls
      If ReadProcessMemory_(lProcess, lAdr_JCLS, *MemB_EXP, MemorySize(*MemB_EXP), #Null)
        Charinfo\jcls = PeekL(*MemB_EXP)
      EndIf
      ;Zeny
      If ReadProcessMemory_(lProcess, lAdr_Zeny, *MemB_EXP, MemorySize(*MemB_EXP), #Null)
        Charinfo\zeny = PeekL(*MemB_EXP)
      EndIf
      ;Guild
      If ReadProcessMemory_(lProcess, lAdr_Guild, *MemBuffer, MemorySize(*MemBuffer), #Null)
        Charinfo\guild = PeekS(*MemBuffer)
      EndIf
      ;Party
      If ReadProcessMemory_(lProcess, lAdr_Party, *MemBuffer, MemorySize(*MemBuffer), #Null)
        Charinfo\party = PeekS(*MemBuffer)
      EndIf
      ;Map
      If ReadProcessMemory_(lProcess, lAdr_Map, *MemBuffer, MemorySize(*MemBuffer), #Null)
        Charinfo\map = StringField(PeekS(*MemBuffer), 1, ".")
      EndIf

      ;Play
      If UCase(Trim(Charinfo\map)) <> "LOGIN"
        ;Kills
        If Charinfo\bexp <> lLBEXP Or Charinfo\jexp <> lLJEXP
          Charinfo\killc + 1
        EndIf

        ;Reset
        If Charinfo\name <> lName
          Charinfo\sbexp = -1
          Charinfo\sjexp = -1
          Charinfo\killc = 0
        EndIf

        If Charinfo\blvl <> lLBLVL
          Charinfo\sbexp = -1
        EndIf
        If Charinfo\jlvl <> lLJLVL
          Charinfo\sjexp = -1
        EndIf

        ;Erhaltene BaseEXP
        If Charinfo\sbexp = -1: Charinfo\sbexp = Charinfo\bexp: EndIf

        ;Erhaltene JobEXP
        If Charinfo\sjexp = -1: Charinfo\sjexp = Charinfo\jexp: EndIf

        ;Erhaltene BaseEXP - Letzter Gegner
        lLBEXP = Charinfo\bexp
        lLJEXP = Charinfo\jexp

        lName =  Charinfo\name

        lLBLVL = Charinfo\blvl
        lLJLVL = Charinfo\jlvl

        SetGadgetItemText(#G_LI_Main_Charinfo, 0, JobClsName(Charinfo\jcls) + " " + Charinfo\name + " " + Str(Charinfo\blvl) + "/" + Str(Charinfo\jlvl), 1)

        If Charinfo\blvl <= 99
          Protected sName.s

          If Charinfo\jcls >= 0 And Charinfo\jcls <= 26
            ;NormalCls
            sName = FormatPointedSize(Charinfo\bexp) + "/" + FormatPointedSize(BaseEXP(Charinfo\blvl)\n) + " - " + StrF((Charinfo\bexp * 100) / BaseEXP(Charinfo\blvl)\n ,2) + "%"
          EndIf

          If Charinfo\jcls >= 4001 And Charinfo\jcls <= 4022
            ;AdvanceCls
            sName = FormatPointedSize(Charinfo\bexp) + "/" + FormatPointedSize(BaseEXP(Charinfo\blvl)\a) + " - " + StrF((Charinfo\bexp * 100) / BaseEXP(Charinfo\blvl)\a ,2) + "%"
          EndIf

          SetGadgetItemText(#G_LI_Main_Charinfo, 1, sName, 1)
        EndIf

        SetGadgetItemText(#G_LI_Main_Charinfo, 2, FormatPointedSize(Charinfo\jexp), 1)
        SetGadgetItemText(#G_LI_Main_Charinfo, 4, FormatPointedSize(Charinfo\bexp - Charinfo\sbexp), 1)
        SetGadgetItemText(#G_LI_Main_Charinfo, 5, FormatPointedSize(Charinfo\jexp - Charinfo\sjexp), 1)
        SetGadgetItemText(#G_LI_Main_Charinfo, 7, Str(Charinfo\killc), 1)
        SetGadgetItemText(#G_LI_Main_Charinfo, 9, Charinfo\map, 1)
        ;Character Select
      Else
        SetGadgetItemText(#G_LI_Main_Charinfo, 0, "", 1)
        SetGadgetItemText(#G_LI_Main_Charinfo, 1, "", 1)
        SetGadgetItemText(#G_LI_Main_Charinfo, 2, "", 1)
        SetGadgetItemText(#G_LI_Main_Charinfo, 4, "", 1)
        SetGadgetItemText(#G_LI_Main_Charinfo, 5, "", 1)
        SetGadgetItemText(#G_LI_Main_Charinfo, 7, "", 1)
        SetGadgetItemText(#G_LI_Main_Charinfo, 9, "Character Auswahl", 1)
      EndIf

    EndIf

  EndIf
EndProcedure

Procedure WindowCallback(hWnd, Msg, wParam, lParam)
  Protected Result.l = #PB_ProcessPureBasicEvents

  If Msg = #WM_LBUTTONDOWN
    ReleaseCapture_()
    SendMessage_(hWnd, #WM_NCLBUTTONDOWN, #HTCAPTION, #Null)
  EndIf

  If Msg = #WM_WINDOWPOSCHANGING And Preferences\lmagnetic = 1
    Protected WorkR.RECT, *WinR.WINDOWPOS = lParam
    If SystemParametersInfo_(#SPI_GETWORKAREA, #Null, @WorkR, #Null) <> 0 And *WinR <> 0
      If *WinR\x >= WorkR\left - Preferences\lmagneticv And *WinR\x <= WorkR\left + Preferences\lmagneticv: *WinR\x = WorkR\left: EndIf
      If *WinR\y >= WorkR\top - Preferences\lmagneticv And *WinR\y <= WorkR\top + Preferences\lmagneticv: *WinR\y = WorkR\top: EndIf
      If *WinR\y + *WinR\cy >= WorkR\bottom - Preferences\lmagneticv And *WinR\y + *WinR\cy <= WorkR\bottom + Preferences\lmagneticv: *WinR\y = WorkR\bottom - *WinR\cy: EndIf
      If *WinR\x + *WinR\cx >= WorkR\right - Preferences\lmagneticv And *WinR\x + *WinR\cx <= WorkR\right + Preferences\lmagneticv: *WinR\x = WorkR\right - *WinR\cx: EndIf
    EndIf
  EndIf

  ProcedureReturn Result
EndProcedure

Procedure EndApplication()
  If lPThread <> 0 And lHandle <> 0 And  lProcess <> 0
    CloseHandle_(lProcess)
  EndIf

  End
EndProcedure

;- Start
SetWindowCallback(@WindowCallback())

HideWindow(#Win_Main, 0)
DisableWindow(#Win_Main, 0)

SetGadgetState(#G_CH_Main_OnTop, 1): Window_AlwaysOnTop(#Win_Main, 1)

Repeat
  lWindowEvent = WaitWindowEvent(10)
  lEventWindow = EventWindow()
  lEventGadget = EventGadget()
  lEventMenu   = EventMenu()
  lEventType   = EventType()

  RefreshEvent()

  Select lWindowEvent
    ;- Event_Menu
    Case #PB_Event_Menu
      Select lEventMenu
    EndSelect

    ;- Event_Gadget
    Case #PB_Event_Gadget
      Select lEventWindow

        Case #Win_Main
          Select lEventGadget

            Case #G_CH_Main_OnTop
              Window_AlwaysOnTop(#Win_Main, GetGadgetState(#G_CH_Main_OnTop))

            Case #G_BN_Main_Start
              Select GetGadgetText(#G_BN_Main_Start)
                Case "Start"
                  StartWatch()
                Case "Stop"
                  StopWatch()
              EndSelect

          EndSelect

      EndSelect

      ;- Event_SysTray
    Case #PB_Event_SysTray
      Select lEventType
    EndSelect

    ;- Event_CloseWindow
    Case #PB_Event_CloseWindow
      Select lEventWindow
        Case #Win_Main
          EndApplication()
      EndSelect

  EndSelect
ForEver

; IDE Options = PureBasic 4.60 (Windows - x86)
; CursorPosition = 401
; FirstLine = 386
; Folding = -B0-----------
; EnableXP
; Executable = ROWatch.exe
; CPU = 1
; CompileSourceDirectory
; EnableCompileCount = 244
; EnableBuildCount = 76
; EnableExeConstant