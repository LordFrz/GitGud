;Script Version
SVersion = 1.7.0
hideTB:= false

; Uncomment if Gdip.ahk is not in your standard library
#Include, Includes/Gdip.ahk
#Include, Includes/MakeINI.ahk

;///////////////Initial INI Reads///////////////////////////////

	;Settings.ini Reads
	IniRead, GUIX, Settings.ini, SETTINGS, GuiLocX
	IniRead, GUIY, Settings.ini, SETTINGS, GuiLocY
	IniRead, SENSE, Settings.ini, SETTINGS, Sensitivity		

	;Guns.ini Reads
	IniRead, M92Refractory, Guns.ini, Refractory, M92Refractory
	IniRead, SARRefractory, Guns.ini, Refractory, SARRefractory
	IniRead, M92RefractoryMuz, Guns.ini, Refractory, M92RefractoryMuz
	IniRead, SARRefractoryMuz, Guns.ini, Refractory, SARRefractoryMuz
	IniRead, ShitstolRefractory, Guns.ini, Refractory, ShitstolRefractory
	
;//////////Variable: 1st 2 letters are gun, 2nd 2 letters are scope, last letter is coord///////////////////////////
	IniRead, AKNSY, Guns.ini, RECOIL, AK (No Sight) Y
	IniRead, AKSSY, Guns.ini, RECOIL, AK (Simple Sight) Y
	IniRead, AKHSY, Guns.ini, RECOIL, AK (Holosight) Y
	IniRead, AK4XY, Guns.ini, RECOIL, AK (4X Scope) Y
	IniRead, AKNSX, Guns.ini, RECOIL, AK (No Sight) X
	IniRead, AKSSX, Guns.ini, RECOIL, AK (Simple Sight) X
	IniRead, AKHSX, Guns.ini, RECOIL, AK (Holosight) X
	
	IniRead, SHITNSY, Guns.ini, RECOIL, Shitstol (No Sight) Y
	IniRead, SHITSSY, Guns.ini, RECOIL, Shitstol (Simple Sight) Y
	IniRead, SHITHSY, Guns.ini, RECOIL, Shitstol (Holosight) Y
	IniRead, SHITNSX, Guns.ini, RECOIL, Shitstol (No Sight) X
	IniRead, SHITSSX, Guns.ini, RECOIL, Shitstol (Simple Sight) X
	IniRead, SHITHSX, Guns.ini, RECOIL, Shitstol (Holosight) X
	
	IniRead, MPNSY, Guns.ini, RECOIL, MP5A4 (No Sight) Y
	IniRead, MPSSY, Guns.ini, RECOIL, MP5A4 (Simple Sight) Y
	IniRead, MPHSY, Guns.ini, RECOIL, MP5A4 (Holosight) Y
	IniRead, MPNSX, Guns.ini, RECOIL, MP5A4 (No Sight) X
	IniRead, MPSSX, Guns.ini, RECOIL, MP5A4 (Simple Sight) X
	IniRead, MPHSX, Guns.ini, RECOIL, MP5A4 (Holosight) X
	
	IniRead, SARNSY, Guns.ini, RECOIL, Semi-Automatic Rifle (No Sight) Y
	IniRead, SARSSY, Guns.ini, RECOIL, Semi-Automatic Rifle (Simple Sight) Y
	IniRead, SARHSY, Guns.ini, RECOIL, Semi-Automatic Rifle (Holosight) Y
	IniRead, SAR4XY, Guns.ini, RECOIL, Semi-Automatic Rifle (4x Scope) Y
	IniRead, SARNSX, Guns.ini, RECOIL, Semi-Automatic Rifle (No Sight) X
	IniRead, SARSSX, Guns.ini, RECOIL, Semi-Automatic Rifle (Simple Sight) X
	IniRead, SARHSX, Guns.ini, RECOIL, Semi-Automatic Rifle (Holosight) X
	IniRead, SAR4XX, Guns.ini, RECOIL, Semi-Automatic Rifle (4x Scope) X
	
	IniRead, THNSY, Guns.ini, RECOIL, Thompson (No Sight) Y
	IniRead, THSSY, Guns.ini, RECOIL, Thompson (Simple Sight) Y
	IniRead, THHSY, Guns.ini, RECOIL, Thompson (Holosight) Y
	IniRead, THNSX, Guns.ini, RECOIL, Thompson (No Sight) X
	IniRead, THSSX, Guns.ini, RECOIL, Thompson (Simple Sight) X
	IniRead, THHSX, Guns.ini, RECOIL, Thompson (Holosight) X
	
	IniRead, PYNSY, Guns.ini, RECOIL, Python (No Sight) Y
	IniRead, PYSSY, Guns.ini, RECOIL, Python (Simple Sight) Y
	IniRead, PYHSY, Guns.ini, RECOIL, Python (Holosight) Y
	IniRead, PY4XY, Guns.ini, RECOIL, Python (4x Scope) Y
	IniRead, PYNSX, Guns.ini, RECOIL, Python (No Sight) X
	IniRead, PYSSX, Guns.ini, RECOIL, Python (Simple Sight) X
	IniRead, PYHSX, Guns.ini, RECOIL, Python (Holosight) X
	IniRead, PY4XX, Guns.ini, RECOIL, Python (4x Scope) X
	
	IniRead, M9NSY, Guns.ini, RECOIL, M92 (No Sight) Y
	IniRead, M9SSY, Guns.ini, RECOIL, M92 (Simple Sight) Y
	IniRead, M9HSY, Guns.ini, RECOIL, M92 (Holosight) Y	
	IniRead, M94XY, Guns.ini, RECOIL, M92 (4x Scope) Y
	IniRead, M9NSX, Guns.ini, RECOIL, M92 (No Sight) X
	IniRead, M9SSX, Guns.ini, RECOIL, M92 (Simple Sight) X
	IniRead, M9HSX, Guns.ini, RECOIL, M92 (Holosight) X
	IniRead, M94XX, Guns.ini, RECOIL, M92 (4x Scope) X
	
	IniRead, SMGNSY, Guns.ini, RECOIL, SMG (No Sight) Y
	IniRead, SMGSSY, Guns.ini, RECOIL, SMG (Simple Sight) Y
	IniRead, SMGHSY, Guns.ini, RECOIL, SMG (Holosight) Y
	IniRead, SMGNSX, Guns.ini, RECOIL, SMG (No Sight) X
	IniRead, SMGSSX, Guns.ini, RECOIL, SMG (Simple Sight) X
	IniRead, SMGHSX, Guns.ini, RECOIL, SMG (Holosight) X
	
	IniRead, LRNSY, Guns.ini, RECOIL, LR-300 (No Sight) Y
	IniRead, LRSSY, Guns.ini, RECOIL, LR-300 (Simple Sight) Y
	IniRead, LRHSY, Guns.ini, RECOIL, LR-300 (Holosight) Y
	IniRead, LR4XY, Guns.ini, RECOIL, LR-300 (4x Scope) Y
	IniRead, LRNSX, Guns.ini, RECOIL, LR-300 (No Sight) X
	IniRead, LRSSX, Guns.ini, RECOIL, LR-300 (Simple Sight) X
	IniRead, LRHSX, Guns.ini, RECOIL, LR-300 (Holosight) X
	IniRead, LR4XX, Guns.ini, RECOIL, LR-300 (4x Scope) X			
	
	IniRead, MGNSY, Guns.ini, RECOIL, M249 (No Sight) Y
	IniRead, MGSSY, Guns.ini, RECOIL, M249 (Simple Sight) Y
	IniRead, MGHSY, Guns.ini, RECOIL, M249 (Holosight) Y
	IniRead, MG4XY, Guns.ini, RECOIL, M249 (4x Scope) Y
	IniRead, MGNSX, Guns.ini, RECOIL, M249 (No Sight) X
	IniRead, MGSSX, Guns.ini, RECOIL, M249 (Simple Sight) X
	IniRead, MGHSX, Guns.ini, RECOIL, M249 (Holosight) X
	IniRead, MG4XX, Guns.ini, RECOIL, M249 (4x Scope) X
	
;////////////////////////////////CROUCH RECOIL READ/////////////////////////////////////////
	IniRead, cAKNSY, Guns.ini, CROUCHRECOIL, AK (No Sight) Y
	IniRead, cAKSSY, Guns.ini, CROUCHRECOIL, AK (Simple Sight) Y
	IniRead, cAKHSY, Guns.ini, CROUCHRECOIL, AK (Holosight) Y
	IniRead, cAK4XY, Guns.ini, CROUCHRECOIL, AK (4x Scope) Y
	IniRead, cAKNSX, Guns.ini, CROUCHRECOIL, AK (No Sight) X
	IniRead, cAKSSX, Guns.ini, CROUCHRECOIL, AK (Simple Sight) X
	IniRead, cAKHSX, Guns.ini, CROUCHRECOIL, AK (Holosight) X
	
	IniRead, cSHITNSY, Guns.ini, CROUCHRECOIL, Shitstol (No Sight) Y
	IniRead, cSHITSSY, Guns.ini, CROUCHRECOIL, Shitstol (Simple Sight) Y
	IniRead, cSHITHSY, Guns.ini, CROUCHRECOIL, Shitstol (Holosight) Y
	IniRead, cSHITNSX, Guns.ini, CROUCHRECOIL, Shitstol (No Sight) X
	IniRead, cSHITSSX, Guns.ini, CROUCHRECOIL, Shitstol (Simple Sight) X
	IniRead, cSHITHSX, Guns.ini, CROUCHRECOIL, Shitstol (Holosight) X
	
	IniRead, cMPNSY, Guns.ini, CROUCHRECOIL, MP5A4 (No Sight) Y
	IniRead, cMPSSY, Guns.ini, CROUCHRECOIL, MP5A4 (Simple Sight) Y
	IniRead, cMPHSY, Guns.ini, CROUCHRECOIL, MP5A4 (Holosight) Y
	IniRead, cMPNSX, Guns.ini, CROUCHRECOIL, MP5A4 (No Sight) X
	IniRead, cMPSSX, Guns.ini, CROUCHRECOIL, MP5A4 (Simple Sight) X
	IniRead, cMPHSX, Guns.ini, CROUCHRECOIL, MP5A4 (Holosight) X
	
	IniRead, cSARNSY, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (No Sight) Y
	IniRead, cSARSSY, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (Simple Sight) Y
	IniRead, cSARHSY, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (Holosight) Y
	IniRead, cSAR4XY, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (4x Scope) Y
	IniRead, cSARNSX, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (No Sight) X
	IniRead, cSARSSX, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (Simple Sight) X
	IniRead, cSARHSX, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (Holosight) X
	IniRead, cSAR4XX, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (4x Scope) X
	
	IniRead, cTHNSY, Guns.ini, CROUCHRECOIL, Thompson (No Sight) Y
	IniRead, cTHSSY, Guns.ini, CROUCHRECOIL, Thompson (Simple Sight) Y
	IniRead, cTHHSY, Guns.ini, CROUCHRECOIL, Thompson (Holosight) Y
	IniRead, cTHNSX, Guns.ini, CROUCHRECOIL, Thompson (No Sight) X
	IniRead, cTHSSX, Guns.ini, CROUCHRECOIL, Thompson (Simple Sight) X
	IniRead, cTHHSX, Guns.ini, CROUCHRECOIL, Thompson (Holosight) X
	
	IniRead, cPYNSY, Guns.ini, CROUCHRECOIL, Python (No Sight) Y
	IniRead, cPYSSY, Guns.ini, CROUCHRECOIL, Python (Simple Sight) Y
	IniRead, cPYHSY, Guns.ini, CROUCHRECOIL, Python (Holosight) Y
	IniRead, cPY4XY, Guns.ini, CROUCHRECOIL, Python (4x Scope) Y
	IniRead, cPYNSX, Guns.ini, CROUCHRECOIL, Python (No Sight) X
	IniRead, cPYSSX, Guns.ini, CROUCHRECOIL, Python (Simple Sight) X
	IniRead, cPYHSX, Guns.ini, CROUCHRECOIL, Python (Holosight) X
	IniRead, cPY4XX, Guns.ini, CROUCHRECOIL, Python (4x Scope) X
	
	IniRead, cM9NSY, Guns.ini, CROUCHRECOIL, M92 (No Sight) Y
	IniRead, cM9SSY, Guns.ini, CROUCHRECOIL, M92 (Simple Sight) Y
	IniRead, cM9HSY, Guns.ini, CROUCHRECOIL, M92 (Holosight) Y
	IniRead, cM94XY, Guns.ini, CROUCHRECOIL, M92 (4x Scope) Y			
	IniRead, cM9NSX, Guns.ini, CROUCHRECOIL, M92 (No Sight) X
	IniRead, cM9SSX, Guns.ini, CROUCHRECOIL, M92 (Simple Sight) X
	IniRead, cM9HSX, Guns.ini, CROUCHRECOIL, M92 (Holosight) X
	IniRead, cM94XX, Guns.ini, CROUCHRECOIL, M92 (4x Scope) X	

	IniRead, cSMGNSY, Guns.ini, CROUCHRECOIL, SMG (No Sight) Y
	IniRead, cSMGSSY, Guns.ini, CROUCHRECOIL, SMG (Simple Sight) Y
	IniRead, cSMGHSY, Guns.ini, CROUCHRECOIL, SMG (Holosight) Y
	IniRead, cSMGNSX, Guns.ini, CROUCHRECOIL, SMG (No Sight) X
	IniRead, cSMGSSX, Guns.ini, CROUCHRECOIL, SMG (Simple Sight) X
	IniRead, cSMGHSX, Guns.ini, CROUCHRECOIL, SMG (Holosight) X
	
	IniRead, cLRNSY, Guns.ini, CROUCHRECOIL, LR-300 (No Sight) Y
	IniRead, cLRSSY, Guns.ini, CROUCHRECOIL, LR-300 (Simple Sight) Y
	IniRead, cLRHSY, Guns.ini, CROUCHRECOIL, LR-300 (Holosight) Y
	IniRead, cLR4XY, Guns.ini, CROUCHRECOIL, LR-300 (4x Scope) Y
	IniRead, cLRNSX, Guns.ini, CROUCHRECOIL, LR-300 (No Sight) X
	IniRead, cLRSSX, Guns.ini, CROUCHRECOIL, LR-300 (Simple Sight) X
	IniRead, cLRHSX, Guns.ini, CROUCHRECOIL, LR-300 (Holosight) X
	IniRead, cLR4XX, Guns.ini, CROUCHRECOIL, LR-300 (4x Scope) X
	
	IniRead, cMGNSY, Guns.ini, CROUCHRECOIL, M249 (No Sight) Y
	IniRead, cMGSSY, Guns.ini, CROUCHRECOIL, M249 (Simple Sight) Y
	IniRead, cMGHSY, Guns.ini, CROUCHRECOIL, M249 (Holosight) Y
	IniRead, cMG4XY, Guns.ini, CROUCHRECOIL, M249 (4x Scope) Y
	IniRead, cMGNSX, Guns.ini, CROUCHRECOIL, M249 (No Sight) X
	IniRead, cMGSSX, Guns.ini, CROUCHRECOIL, M249 (Simple Sight) X
	IniRead, cMGHSX, Guns.ini, CROUCHRECOIL, M249 (Holosight) X
	IniRead, cMG4XX, Guns.ini, CROUCHRECOIL, M249 (4x Scope) X	

;/////////////////////////////////////////////SLEEP MODIFIERS////////////////////////////////////////////
	IniRead, RoF, Guns.ini, FireRate, FireRate
	IniRead, RoFAK, Guns.ini, FireRate, AK (No Sight)
	IniRead, cRoFAK, Guns.ini, FireRate, cAK (No Sight)
	
	IniRead, AKSLEEPNS, Guns.ini,  TUNING (Sleeps), AK (No Sight)
	IniRead, AKSLEEPSS, Guns.ini, TUNING (Sleeps), AK (Simple Sight)
	IniRead, AKSLEEPHS, Guns.ini, TUNING (Sleeps), AK (Holosight)
	IniRead, AKSLEEP4X, Guns.ini, TUNING (Sleeps), AK (4x Scope)

	IniRead, MP5A4SLEEPNS, Guns.ini, TUNING (Sleeps), MP5A4 (No Sight)
	IniRead, MP5A4SLEEPSS, Guns.ini, TUNING (Sleeps), MP5A4 (Simple Sight)
	IniRead, MP5A4SLEEPHS, Guns.ini, TUNING (Sleeps), MP5A4 (Holosight)

	
	IniRead, THSLEEPNS, Guns.ini, TUNING (Sleeps), Thompson (No Sight)
	IniRead, THSLEEPSS, Guns.ini, TUNING (Sleeps), Thompson (Simple Sight)
	IniRead, THSLEEPHS, Guns.ini, TUNING (Sleeps), Thompson (Holosight)	
	
	
	IniRead, SMGSLEEPNS, Guns.ini, TUNING (Sleeps), SMG (No Sight)
	IniRead, SMGSLEEPSS, Guns.ini, TUNING (Sleeps), SMG (Simple Sight)
	IniRead, SMGSLEEPHS, Guns.ini, TUNING (Sleeps), SMG (Holosight)
	
	IniRead, LRSLEEPNS, Guns.ini, TUNING (Sleeps), LR-300 (No Sight)
	IniRead, LRSLEEPSS, Guns.ini, TUNING (Sleeps), LR-300 (Simple Sight)
	IniRead, LRSLEEPHS, Guns.ini, TUNING (Sleeps), LR-300 (Holosight)
	IniRead, LRSLEEP4X, Guns.ini, TUNING (Sleeps), LR-300 (4x Scope)
	
	IniRead, M249SLEEPNS, Guns.ini, TUNING (Sleeps), M249 (No Sight)
	IniRead, M249SLEEPSS, Guns.ini, TUNING (Sleeps), M249 (Simple Sight)
	IniRead, M249SLEEPHS, Guns.ini, TUNING (Sleeps), M249 (Holosight)
	IniRead, M249SLEEP4X, Guns.ini, TUNING (Sleeps), M249 (4x Scope)
	
	IniRead, cAKSLEEPNS, Guns.ini,  CROUCHTUNING (Sleeps), AK (No Sight)
	IniRead, cAKSLEEPSS, Guns.ini, CROUCHTUNING (Sleeps), AK (Simple Sight)
	IniRead, cAKSLEEPHS, Guns.ini, CROUCHTUNING (Sleeps), AK (Holosight)
	IniRead, cAKSLEEP4X, Guns.ini, CROUCHTUNING (Sleeps), AK (4x Scope)

	IniRead, cMP5A4SLEEPNS, Guns.ini, CROUCHTUNING (Sleeps), MP5A4 (No Sight)
	IniRead, cMP5A4SLEEPSS, Guns.ini, CROUCHTUNING (Sleeps), MP5A4 (Simple Sight)
	IniRead, cMP5A4SLEEPHS, Guns.ini, CROUCHTUNING (Sleeps), MP5A4 (Holosight)

	
	IniRead, cTHSLEEPNS, Guns.ini, CROUCHTUNING (Sleeps), Thompson (No Sight)
	IniRead, cTHSLEEPSS, Guns.ini, CROUCHTUNING (Sleeps), Thompson (Simple Sight)
	IniRead, cTHSLEEPHS, Guns.ini, CROUCHTUNING (Sleeps), Thompson (Holosight)	
	
	
	IniRead, cSMGSLEEPNS, Guns.ini, CROUCHTUNING (Sleeps), SMG (No Sight)
	IniRead, cSMGSLEEPSS, Guns.ini, CROUCHTUNING (Sleeps), SMG (Simple Sight)
	IniRead, cSMGSLEEPHS, Guns.ini, CROUCHTUNING (Sleeps), SMG (Holosight)
	
	IniRead, cLRSLEEPNS, Guns.ini, CROUCHTUNING (Sleeps), LR-300 (No Sight)
	IniRead, cLRSLEEPSS, Guns.ini, CROUCHTUNING (Sleeps), LR-300 (Simple Sight)
	IniRead, cLRSLEEPHS, Guns.ini, CROUCHTUNING (Sleeps), LR-300 (Holosight)
	IniRead, cLRSLEEP4X, Guns.ini, CROUCHTUNING (Sleeps), LR-300 (4x Scope)
	
	IniRead, cM249SLEEPNS, Guns.ini, CROUCHTUNING (Sleeps), M249 (No Sight)
	IniRead, cM249SLEEPSS, Guns.ini, CROUCHTUNING (Sleeps), M249 (Simple Sight)
	IniRead, cM249SLEEPHS, Guns.ini, CROUCHTUNING (Sleeps), M249 (Holosight)
	IniRead, cM249SLEEP4X, Guns.ini, CROUCHTUNING (Sleeps), M249 (4x Scope)
		
;Resolution Calibration Unit--------------------------------
	xx := (A_ScreenWidth // 2)
	yy := (A_ScreenHeight // 2)
		IniWrite, %xx%, Settings.ini, ResCalibration, XRes
		IniWrite, %yy%, Settings.ini, ResCalibration, YRes
		;FileAppend,`n,Settings.ini
		
		IniRead, XRes, Settings.ini, ResCalibration, XRes
		IniRead, YRes, Settings.ini, ResCalibration, YRes
			XRes1 = %XRes%
			XRes1 -= 10
			XRes2 = %XRes%
			XRes2 += 10
			YRes1 = %YRes%
			YRes1 -= 10
			YRes2 = %YRes%
			YRes2 += 10
		IniWrite, %XRes1%, Settings.ini, ResCalibration, X1
		IniWrite, %XRes2%, Settings.ini, ResCalibration, X2
		IniWrite, %YRes1%, Settings.ini, ResCalibration, Y1
		IniWrite, %YRes2%, Settings.ini, ResCalibration, Y2
		
		IniRead, X1, Settings.ini, ResCalibration, X1
		IniRead, X2, Settings.ini, ResCalibration, X2
		IniRead, Y1, Settings.ini, ResCalibration, Y1
		IniRead, Y2, Settings.ini, ResCalibration, Y2
;-----------------------------------------------------------

Run, "SMEKTHair.ahk"
SetWorkingDir %A_ScriptDir%
Gui +LastFound ;
WinSet, Transparent, 235
Width := 280
Gui, Color, 5F5A59
Gui, Font, s12 c7BF106 Bold
Gui, Color, 5F5A59
Gui, Font, s8 c7BF106 Bold
Gui, Add, Text, % "x0 y-5 w" Width " h30 BackgroundTrans Center 0x200 gGuiMove vCaption", G    I    T           G    U    D
Gui, -Caption
Gui, Show, x%GUIX% y%GUIY% w340 h400, SMEKT
gui, +AlwaysOnTop
Gui, Add, Tab2, x1 y25 w340 h390 , Loadout|Reticle|Settings|Config
Gui, Font, s6 c7BF106
;------------------------------------------------------Loadout Tab------------------------------------------
Gui, tab, Loadout
Gui, Font, s8 c7BF106
Gui, Add, Text, x5 y70  Center w340 h10, ------------------------------------------------------------------------------------
Gui, Add, Text, x5 y56  Center w340 h20, Select Weapon
Gui, Font, s6 c7BF106
Gui, Add, Text, x300 y390 w80 h20, V: %SVersion%
Gui, Add, Picture, x280 y30 w10 h10 vFRPic, %a_Workingdir%\Images\FROff.png
Gui, Add, Picture, x290 y1 vPScript1, %a_Workingdir%\Images\Off.png
Gui, add, radio, x85 y95 w70 h15 vMP5A4, MP5A4
Gui, add, radio, x5 y95 w70 h15 vSAR, Semi-Auto Rifle
Gui, add, radio, x5 y120 w70 h15 vAK, AK
Gui, add, radio, x85 y120 w70 h15 vPython, Python
Gui, add, radio, x85 y145 w70 h15 vSHITSTOL, Semi-Auto Pistol
Gui, add, radio, x5 y145 w70 h15 vThompson, Thompson
Gui, add, radio, x245 y95 w70 h15 vM92, M92
Gui, add, radio, x245 y120 w70 h15 vSMG, SMG
Gui, add, radio, x165 y95 w70 h15 vLR300, LR300
Gui, add, radio, x165 y120 w70 h15 vM249, M249
Gui, Font, s8 c7BF106
Gui, Add, Text, x5 y215  Center w340 h10, -----------------------------------------------------------------------------------
Gui, Add, Text, x5 y200  Center w340 h20, Select Attachments
Gui, add, radio, x500 y180 w70 h15 vSEMI, SEMI
Gui, add, radio, x500 y210 w70 h15 vAUTO, AUTO
Gui, Add, Text, x5 y185  Center w340 h10, -----------------------------------------------------------------------------------
Gui, Font, s6 c7BF106
Gui, add, radio, x5 y235 w70 h17 vNoSight, No Sight
Gui, add, radio, x85 y235 w70 h17 vSimpleSight, Simple Sight
Gui, add, radio, x165 y235 w70 h17 vHoloSight, Holosight
Gui, add, radio, x240 y235 w70 h17 v4xScope, 4x Scope
Gui, Add, Checkbox, x5 y340 w85 h20 Checked 1 vStandFire, Enable Standing Fire
Gui, add, button, x5 y370 w45 h20 gHelp, Help
Gui, add, radio, x5 y265 w70 h17 vNoBarrel, No Barrel Mod
Gui, add, radio, x85 y265 w70 h17 vMuzzleBoost, Muzzle Boost
Gui, add, button, x60 y370 w45 h20 gClose, Close
Gui, add, button, x115 y370 w80 h20 gTBToggle, Toggle Taskbar
Gui, add, radio, x380 y45 w70 h20 vHide, Hide
Gui, add, radio, x380 y25 w70 h20 vShow, Show
Gui, add, button, x380 y30 w20 h10, Filler
Gui, add, button, x380 y30 w20 h10, Filler
Gui, add, radio, x380 y65 w70 h25 vMod, Mod
Gui, add, radio, x380 y25 w70 h25 vOff, Off
;------------------------------------------------------Reticle Tab------------------------------------------
Gui, tab, Reticle
Gui, add, button, x5 y370 w45 h20 gHelp, Help
Gui, Add, Text, x300 y390 w80 h20, V: %SVersion%
Gui, add, button, x60 y370 w45 h20 gClose, Close
Gui, Add, Picture, x280 y30 w10 h10 vFRPic2, %a_Workingdir%\Images\FROff.png
Gui, Add, Picture, x290 y1 vPScript2, %a_Workingdir%\Images\Off.png
Gui, add, radio, x5 y75 w35 h15 vSMEKTHairOn gSMEKTHairOn, On
Gui, add, radio, x40 y75 w35 h15 vSMEKTHairOff gSMEKTHairOff, Off
Gui, Font, s8 c7BF106
Gui, Add, Text, x3 y60  Center w334 h15, ================RETICLE EDITOR=================
Gui, Font, s6 c7BF106
Gui, add, radio, x5 y95 w50 h25 vSniper gSniper, Sniper
Gui, add, radio, x5 y120 w50 h25 vACOG gACOG, ACOG
Gui, add, radio, x5 y145 w50 h25 vCross gCross, Cross
Gui, add, radio, x5 y170 w50 h25 vDot gDot, Dot
Gui, add, radio, x145 y95 w50 h25 vQuad gQuad, Quad Dot
Gui, add, radio, x75 y95 w50 h25 vVSight gVSight, V Sight
Gui, add, radio, x75 y120 w50 h25 vGapDash gGapDash, Gap Dash
Gui, add, radio, x75 y145 w50 h25 vRangeFinder gRangeFinder, Range Finder
Gui, add, radio, x75 y170 w50 h25 vXSite gXSight, X Sight
Gui, add, radio, x145 y120 w50 h25 vHonzo gHonzo, Honzo
Gui, add, radio, x145 y145 w50 h25 vWTF gWTF, ???

;----------------Color Slider-----------------------
IniRead, RETCOLOR, Settings.ini, SETTINGS, RETICLECOLOR
; These change the ARGB ####### number to 3 RGB ###,###,### numbers 
RETTRAN  := (0xff000000 & RETCOLOR) >> 24 
RETRED   := (0x00ff0000 & RETCOLOR) >> 16
RETGREEN := (0x0000ff00 & RETCOLOR) >> 8
RETBLUE  :=  0x000000ff & RETCOLOR
 
 ;----------Color Sliders RGB-----------
;Gui, Add, Slider, x75 y210 w200 h20 vCSTrans gColorSliderSubmit Range0-255, %RETTRAN%
;Gui, Add, Text, x5 y210 w60 h20, Transparency
Gui, Add, Slider, x75 y230 w200 h20 vCSRed gColorSliderSubmit Range0-255, %RETRED%
Gui, Add, Text, x5 y230 w60 h20, Red
Gui, Add, Slider, x75 y250 w200 h20 vCSGreen gColorSliderSubmit Range0-255, %RETGREEN%
Gui, Add, Text, x5 y250 w60 h20, Green
Gui, Add, Slider, x75 y270 w200 h20 vCSBlue gColorSliderSubmit Range0-255, %RETBLUE%
Gui, Add, Text, x5 y270 w60 h20, Blue
;----Sets Sliders to colors from settings.ini------
CSRed = %RETRED%
CSGreen = %RETGREEN%
CSBlue = %RETBLUE%
CSTrans = %RETTRAN%

;------------------------------------------------------Settings Tab------------------------------------------
Gui, tab, Settings
Gui, add, button, x5 y370 w45 h20 gHelp, Help
Gui, Add, Text, x300 y390 w80 h20, V: %SVersion%
Gui, add, button, x60 y370 w45 h20 gClose, Close
Gui, Add, Picture, x280 y30 w10 h10 vFRPic3, %a_Workingdir%\Images\FROff.png
Gui, Add, Picture, x290 y1 vPScript3, %a_Workingdir%\Images\Off.png
Gui, Font, s7 c7BF106
Guicontrol,,Show,1
Guicontrol,,NoBarrel,1
Guicontrol,,Mod,0
Guicontrol,,SAR,1
Guicontrol,,Cross,1
Guicontrol,,Semi,1
Guicontrol,,NoSight,1
GuiControl,,SMEKTHairOn,1

;Git saved vales from settings
IniRead, TOGGLEKEY, Settings.ini, ChatHotKeys, TOGGLEHOTKEY
IniRead, MINMAXKEY, Settings.ini, ChatHotKeys, MINMAXHOTKEY
IniRead, KILLKEY, Settings.ini, ChatHotKeys, KILLHOTKEY
IniRead, RoFTOG, Settings.ini, ChatHotKeys, RoFTOGGLE
IniRead, COMBATLOGKEY, Settings.ini, ChatHotKeys, COMBATLOGHOTKEY

IniRead, CHAT1, Settings.ini, ChatCommands, CHATCOMMAND1
IniRead, CHATKEY1, Settings.ini, ChatHotKeys, CHATHOTKEY1
IniRead, CHAT2, Settings.ini, ChatCommands, CHATCOMMAND2
IniRead, CHATKEY2, Settings.ini, ChatHotKeys, CHATHOTKEY2
IniRead, CHAT3, Settings.ini, ChatCommands, CHATCOMMAND3
IniRead, CHATKEY3, Settings.ini, ChatHotKeys, CHATHOTKEY3
IniRead, CHAT4, Settings.ini, ChatCommands, CHATCOMMAND4
IniRead, CHATKEY4, Settings.ini, ChatHotKeys, CHATHOTKEY4
IniRead, CHAT5, Settings.ini, ChatCommands, CHATCOMMAND5
IniRead, CHATKEY5, Settings.ini, ChatHotKeys, CHATHOTKEY5
IniRead, CHAT6, Settings.ini, ChatCommands, CHATCOMMAND6
IniRead, CHATKEY6, Settings.ini, ChatHotKeys, CHATHOTKEY6
IniRead, CHAT7, Settings.ini, ChatCommands, CHATCOMMAND7
IniRead, CHATKEY7, Settings.ini, ChatHotKeys, CHATHOTKEY7
IniRead, CHAT8, Settings.ini, ChatCommands, CHATCOMMAND8
IniRead, CHATKEY8, Settings.ini, ChatHotKeys, CHATHOTKEY8

IniRead, X1, Settings.ini, ResCalibration, X1
IniRead, X2, Settings.ini, ResCalibration, X2
IniRead, Y1, Settings.ini, ResCalibration, Y1
IniRead, Y2, Settings.ini, ResCalibration, Y2

;Settinss Tab Fields
Gui, add, Text, x8 y65 w110 h13, Custom Commands
Gui, add, Text, x155 y65 w110 h13, Key

Gui, add, Text, x8 y80 w100 h20, TOGGLE
Gui, Add, Hotkey, vToggleKey x155 y80 w100 h20,%TOGGLEKEY%

Gui, add, Text, x8 y100 w100 h20, MINMAX
Gui, Add, Hotkey, vMinMaxKey x155 y100 w100 h20,%MINMAXKEY%

Gui, add, Text, x8 y120 w100 h20, KILL
Gui, Add, Hotkey, vKillKey x155 y120 w100 h20,%KILLKEY%

Gui, add, Text, x8 y140 w150 h20, Controlled Fire Toggle
Gui, Add, Hotkey, vRoFTOGGLE x155 y140 w100 h20,%RoFTOG%

Gui, add, Text, x8 y160 w100 h20, CombatLog
Gui, Add, Hotkey, vCombatLogKey x155 y160 w100 h20,%COMBATLOGKEY%

Gui, add, Text, x8 y180 w100 h20, CMD1
Gui, Add, Edit, x55 y180 w100 h20 vCHAT1 cBlack, %CHAT1%
Gui, Add, Hotkey, vChatKey1 x155 y180 w100 h20,%CHATKEY1%

Gui, add, Text, x8 y200 w100 h20, CMD2
Gui, Add, Edit, x55 y200 w100 h20 vCHAT2 cBlack, %CHAT2%
Gui, Add, Hotkey, vChatKey2 x155 y200 w100 h20,%CHATKEY2%

Gui, add, Text, x8 y220 w100 h20, CMD3
Gui, Add, Edit, x55 y220 w100 h20 vCHAT3 cBlack, %CHAT3%
Gui, Add, Hotkey, vChatKey3 x155 y220 w100 h20,%CHATKEY3%

Gui, add, Text, x8 y240 w100 h20, CMD4
Gui, Add, Edit, x55 y240 w100 h20 vCHAT4 cBlack, %CHAT4%
Gui, Add, Hotkey, vChatKey4 x155 y240 w100 h20,%CHATKEY4%

Gui, add, Text, x8 y260 w100 h20, CMD5
Gui, Add, Edit, x55 y260 w100 h20 vCHAT5 cBlack, %CHAT5%
Gui, Add, Hotkey, vChatKey5 x155 y260 w100 h20,%CHATKEY5%

Gui, add, Text, x8 y280 w100 h20, CMD6
Gui, Add, Edit, x55 y280 w100 h20 vCHAT6 cBlack, %CHAT6%
Gui, Add, Hotkey, vChatKey6 x155 y280 w100 h20,%CHATKEY6%

Gui, add, Text, x8 y300 w100 h20, CMD7
Gui, Add, Edit, x55 y300 w100 h20 vCHAT7 cBlack, %CHAT7%
Gui, Add, Hotkey, vChatKey7 x155 y300 w100 h20,%CHATKEY7%

Gui, add, Text, x8 y320 w100 h20, CMD8
Gui, Add, Edit, x55 y320 w100 h20 vCHAT8 cBlack, %CHAT8%
Gui, Add, Hotkey, vChatKey8 x155 y320 w100 h20,%CHATKEY8%

Gui, add, button, x115 y370 w45 h20 gSaveSettings, Save
;Set Hotkeys
	Hotkey, %TOGGLEKEY%, ToggleKey
	Hotkey, %MINMAXKEY%, MinMaxKey
	Hotkey, %KILLKEY%, KillKey
	Hotkey, %RoFTOG%, RoFTOGGLE
	Hotkey, %COMBATLOGKEY%, CombatLogKey	
	Hotkey, %CHATKEY1%, ChatKey1
	Hotkey, %CHATKEY2%, ChatKey2
	Hotkey, %CHATKEY3%, ChatKey3
	Hotkey, %CHATKEY4%, ChatKey4
	Hotkey, %CHATKEY5%, ChatKey5
	Hotkey, %CHATKEY6%, ChatKey6
	Hotkey, %CHATKEY7%, ChatKey7
	Hotkey, %CHATKEY8%, ChatKey8
	
;/////////////////////////////////////////Config Tab////////////////////////////////////////
Gui, tab, Config
Gui, Font, s6 c0000
Gui, add, button, x5 y370 w45 h20 gHelp, Help
Gui, add, checkbox, x750 y320 w50 h25 vFROn, FROn
Gui, add, button, x60 y370 w45 h20 gClose, Close
Gui, Add, Picture, x280 y30 w10 h10 vFRPic4, %a_Workingdir%\Images\FROff.png
Gui, Add, Picture, x290 y1 vPScript4, %a_Workingdir%\Images\Off.png
Gui, Font, s7 c7BF106
Gui, add, text, x7 y60 w332 h15, ===========CONTROLLED FIRE EDITOR============
Gui, add, text, x3 y180 w332 h15 Center, ==============SENSITIVITY SELECT==============
Gui, Font, s7 c0000
Gui, add, edit, x15 y270 w70 h20 vSensitivity, %SENSE% 
Gui, add, edit, x15 y90 w70 h20 vFireRate, %RoF% 
Gui, add, button, x85 y90 w40 h20 gFireRate, Enter
Gui, Font, s7 cRed
Gui, add, text, x3 y200 w290 h55 Center, Input your RUST Sensitivity below and press Enter.
Gui, add, text, x3 y110 w290 h55 Center, Simulates rapid single fires while mouse is held down to eliminate progressive aimcone. Input a custom time between shots above to your liking. ONLY SUPPORTS AK AT THE MOMENT
Gui, Font, s7 c7BF106
Gui, add, text, x10 y255 w80 h15 Center vSensitivityText, Sensitivity
Gui, add, button, x85 y270 w40 h20 gSensitivityEnter, Enter
Gui, add, text, x5 y75 w180 h12 vRFText2, Time Between Shots (ms): %RoF%
Gui, Font, s6 c7BF106
Gui, Add, Text, x300 y390 w80 h20, V: %SVersion%
GuiControl,,FROff,1

;///////////////////////////////////////////GUI 2/////////////////////////////////////

Gui, 2:Color, 5F5A59
Gui, 2:Font, s12 c7BF106 Bold
Gui, 2:Color, 5F5A59
Gui, 2:Font, s8 c7BF106 Bold
Gui, 2:Add, Text, % "x0 y-5 w" Width " h18 BackgroundTrans Center 0x200 gGuiMove vCaption", 
Gui, 2:-Caption
Gui, 2:Show, x0 y0 w0 h0, SMEKT
Gui, 2:+LastFound
WinSet, Transparent, 235
gui, 2:+AlwaysOnTop
Gui, 2:Add, Picture, x3  y30 w10 h10 vFRPic5, %a_Workingdir%\Images\FROff.png
Gui, 2:Add, Picture, x33 y1 vPScript5, %a_Workingdir%\Images\Off.png
;------This Fucking Loop IS required :(
Loop {
	sleep 100		
		Gui, Submit, NoHide
		
	If (M92 = 1) && (NoBarrel = 1)
	{
		refractory = %M92Refractory%
	}
	
	If (M92 = 1) && (MuzzleBoost = 1)
	{
		refractory = %M92RefractoryMuzz%
	}
	
	If (SAR = 1)  && (NoBarrel = 1)
	{
		refractory = %SARRefractory%
	}
	
	If (SAR = 1) && (MuzzleBoost = 1)
	{
		refractory = %SARRefractoryMuz%
	}
	
	If (Shitstol = 1) && (NoBarrel = 1)
	{
		refractory = %ShitstolRefractory%
	}
	
	If (MP5A4 = 1) && (NoSight = 1)
	{
			tune = %MP5A4SLEEPNS%
			ctune = %cMP5A4SLEEPNS%
			moveAmountX = %MPNSX%
			moveAmountX /= %SENSE%
			moveAmountY = %MPNSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cMPNSX%
			cmoveAmountX *= 1.197
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cMPNSY%
			cmoveAmountY /= %SENSE%
	}
	
	If (MP5A4 = 1) && (SimpleSight = 1)
	{
			tune = %MP5A4SLEEPSS%
			ctune = %cMP5A4SLEEPSS%
			moveAmountX = %MPSSX%
			moveAmountX /= %SENSE%
			moveAmountY = %MPSSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cMPSSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cMPSSY%
			cmoveAmountY /= %SENSE%
		
	}
	
	If (MP5A4 = 1) && (HoloSight = 1)
	{
			tune = %MP5A4SLEEPHS%
			ctune = %cMP5A4SLEEPHS%
			moveAmountX = %MPNSX%
			moveAmountX /= %SENSE%
			moveAmountY = %MPNSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cMPNSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cMPNSY%
			cmoveAmountY /= %SENSE%		
	}
	
	If (SHITSTOL = 1) && (NoSight = 1)
	{
			moveAmountX = %SHITNSX%
			moveAmountX /= %SENSE%
			moveAmountY = %SHITNSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cSHITNSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cSHITNSY%
			cmoveAmountY /= %SENSE%		
	}
	
	If (SHITSTOL = 1) && (SimpleSight = 1)
	{
			moveAmountX = %SHITSSX%
			moveAmountX /= %SENSE%
			moveAmountY = %SHITSSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cSHITSSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cSHITSSY%
			cmoveAmountY /= %SENSE%		
	}
	
	If (SHITSTOL = 1) && (HoloSight = 1)
	{
			moveAmountX = %SHITHSX%
			moveAmountX /= %SENSE%
			moveAmountY = %SHITHSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cSHITHSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cSHITHSY%
			cmoveAmountY /= %SENSE%				
	}

	If (AK = 1) && (NoSight = 1)
	{
			tune = %AKSLEEPNS%
			ctune = %cAKSLEEPNS%
			moveAmountX = %AKNSX%
			moveAmountX /= %SENSE%
			moveAmountY = %AKNSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cAKNSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cAKNSY%
			cmoveAmountY /= %SENSE%	
			RoFRecoil = %RoFAK%
			RoFRecoil /= %SENSE%
			cRoFRecoil = %cRoFAK%
			cRoFRecoil /= %SENSE%
	}

	If (AK = 1) && (SimpleSight = 1)
	{
			tune = %AKSLEEPSS%
			ctune = %cAKSLEEPSS%
			moveAmountX = %AKSSX%
			moveAmountX /= %SENSE%
			moveAmountY = %AKSSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cAKSSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cAKSSY%
			cmoveAmountY /= %SENSE%	
			RoFRecoil = %RoFAK%
			RoFRecoil /= %SENSE%
			cRoFRecoil = %cRoFAK%
			cRoFRecoil /= %SENSE%
			
	}

	If (AK = 1) && (HoloSight = 1)
	{
			tune = %AKSLEEPHS%
			ctune = %cAKSLEEPHS%
			moveAmountX = %AKHSX%
			moveAmountX /= %SENSE%
			moveAmountY = %AKHSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cAKHSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cAKHSY%
			cmoveAmountY /= %SENSE%	
			RoFRecoil = %RoFAK%
			RoFRecoil /= %SENSE%
			cRoFRecoil = %cRoFAK%
			cRoFRecoil /= %SENSE%			
	}
	
	If (AK = 1) && (4xScope = 1)
	{
			tune = %AKSLEEP4X%
			ctune = %cAKSLEEP4X%
			moveAmountX = 0
			moveAmountX /= %SENSE%
			moveAmountY = %AK4XY%
			moveAmountY /= %SENSE%
			cmoveAmountX = 0
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cAK4XY%
			cmoveAmountY /= %SENSE%	
			RoFRecoil = %RoFAK%
			RoFRecoil /= %SENSE%
			cRoFRecoil = %cRoFAK%
			cRoFRecoil /= %SENSE%			
	}

	if (SMG = 1) && (NoSight = 1)
	{
			tune = %SMGSLEEPNS%
			ctune = %cSMGSLEEPNS%
			moveAmountX = %SMGNSX%
			moveAmountX /= %SENSE%
			moveAmountY = %SMGNSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cSMGNSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cSMGNSY%
			cmoveAmountY /= %SENSE%	
	}

	if (SMG = 1) && (SimpleSight = 1)
	{
			tune = %SMGSLEEPSS%
			ctune = %cSMGSLEEPSS%
			moveAmountX = %SMGSSX%
			moveAmountX /= %SENSE%
			moveAmountY = %SMGSSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cSMGSSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cSMGSSY%
			cmoveAmountY /= %SENSE%	
	}

	if (SMG = 1) && (HoloSight = 1)
	{
			tune = %SMGSLEEPHS%
			ctune = %cSMGSLEEPHS%
			moveAmountX = %SMGHSX%
			moveAmountX /= %SENSE%
			moveAmountY = %SMGHSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cSMGHSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cSMGHSY%
			cmoveAmountY /= %SENSE%	
	}

	if (Thompson = 1) && (NoSight = 1)
	{
			tune = %THSLEEPNS%
			ctune = %cTHSLEEPNS%
			moveAmountX = %THNSX%
			moveAmountX /= %SENSE%
			moveAmountY = %THNSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cTHNSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cTHNSY%
			cmoveAmountY /= %SENSE%	
	}

	if (Thompson = 1) && (SimpleSight = 1)
	{
			tune = %THSLEEPSS%
			ctune = %cTHSLEEPSS%
			moveAmountX = %THSSX%
			moveAmountX /= %SENSE%
			moveAmountY = %THSSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cTHSSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cTHSSY%
			cmoveAmountY /= %SENSE%	
	}

	if (Thompson = 1) && (HoloSight = 1)
	{
			tune = %THSLEEPHS%
			ctune = %cTHSLEEPHS%
			moveAmountX = %THHSX%
			moveAmountX /= %SENSE%
			moveAmountY = %THHSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cTHHSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cTHHSY%
			cmoveAmountY /= %SENSE%	
	}

	if (LR300 = 1) && (NoSight = 1)
	{
			tune = %LRSLEEPNS%
			ctune = %cLRSLEEPNS%
			moveAmountX = %LRNSX%
			moveAmountX /= %SENSE%
			moveAmountY = %LRNSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cLRNSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cLRNSY%
			cmoveAmountY /= %SENSE%	
	}

	if (LR300 = 1) && (SimpleSight = 1)
	{
			tune = %LRSLEEPSS%
			ctune = %cLRSLEEPSS%
			moveAmountX = %LRSSX%
			moveAmountX /= %SENSE%
			moveAmountY = %LRSSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cLRSSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cLRSSY%
			cmoveAmountY /= %SENSE%	
	}

	if (LR300 = 1) && (HoloSight = 1)
	{
			tune = %LRSLEEPHS%
			ctune = %cLRSLEEPHS%
			moveAmountX = %LRHSX%
			moveAmountX /= %SENSE%
			moveAmountY = %LRHSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cLRHSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cLRHSY%
			cmoveAmountY /= %SENSE%	
	}

	if (LR300 = 1) && (4xScope = 1)
	{
			tune = %LRSLEEP4X%
			ctune = %cLRSLEEP4X%
			moveAmountX = %LR4XX%
			moveAmountX /= %SENSE%
			moveAmountY = %LR4XY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cLR4XX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cLR4XY%
			cmoveAmountY /= %SENSE%	
	}

	if (M249 = 1) && (NoSight = 1)
	{
			tune = %M249SLEEPNS%
			ctune = %cM249SLEEPNS%
			moveAmountX = %MGNSX%
			moveAmountX /= %SENSE%
			moveAmountY = %MGNSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cMGNSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cMGNSY%
			cmoveAmountY /= %SENSE%	
	}

	if (M249 = 1) && (SimpleSight = 1)
	{
			tune = %M249SLEEPSS%
			ctune = %cM249SLEEPSS%
			moveAmountX = %MGSSX%
			moveAmountX /= %SENSE%
			moveAmountY = %MGSSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cMGSSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cMGSSY%
			cmoveAmountY /= %SENSE%	
	}

	if (M249 = 1) && (4xScope = 1)
	{
			tune = %M249SLEEP4X%
			ctune = %cM249SLEEP4X%
			moveAmountX = %MG4XX%
			moveAmountX /= %SENSE%
			moveAmountY = %MG4XY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cMG4XX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cMG4XY%
			cmoveAmountY /= %SENSE%	
	}
	
		if (M249 = 1) && (HoloSight = 1)
	{
			tune = %M249SLEEPHS%
			ctune = %cM249SLEEPHS%
			moveAmountX = %MGHSX%
			moveAmountX /= %SENSE%
			moveAmountY = %MGHSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cMGHSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cMGHSY%
			cmoveAmountY /= %SENSE%	
	}
	
	if (Python = 1) && (NoSight = 1)
	{
			moveAmountX = %PYNSX%
			moveAmountX /= %SENSE%
			moveAmountY = %PYNSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cPYNSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cPYNSY%
			cmoveAmountY /= %SENSE%	
	}
	
	if (Python = 1) && (Holosight = 1) 
	{
			moveAmountX = %PYHSX%
			moveAmountX /= %SENSE%
			moveAmountY = %PYHSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cPYHSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cPYHSY%
			cmoveAmountY /= %SENSE%	
	}
	
	if (Python = 1) && (4xScope = 1) 
	{
			moveAmountX = %PY4XX%
			moveAmountX /= %SENSE%
			moveAmountY = %PY4XY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cPY4XX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cPY4XY%
			cmoveAmountY /= %SENSE%	
	}
	
	if (Python = 1) && (SimpleSight = 1)
	{
			moveAmountX = %PYSSX%
			moveAmountX /= %SENSE%
			moveAmountY = %PYSSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cPYSSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cPYSSY%
			cmoveAmountY /= %SENSE%	
	}
	
	if (M92 = 1) && (NoSight = 1)
	{
			moveAmountX = %M9NSX%
			moveAmountX /= %SENSE%
			moveAmountY = %M9NSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cM9NSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cM9NSY%
			cmoveAmountY /= %SENSE%	
	}
	
	if (M92 = 1) && (Holosight = 1)
	{
			moveAmountX = %M9HSX%
			moveAmountX /= %SENSE%
			moveAmountY = %M9HSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cM9HSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cM9HSY%
			cmoveAmountY /= %SENSE%	
	}
	
	if (M92 = 1) && (4xScope = 1)
	{
			moveAmountX = %M94XX%
			moveAmountX /= %SENSE%
			moveAmountY = %M94XY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cM94XX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cM94XY%
			cmoveAmountY /= %SENSE%	
	}
	
	if (M92 = 1) && (SimpleSight = 1) 
	{
			moveAmountX = %M9SSX%
			moveAmountX /= %SENSE%
			moveAmountY = %M9SSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cM9SSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cM9SSY%
			cmoveAmountY /= %SENSE%
	}	
	
	if (SAR = 1) && (NoSight = 1) 
	{
			moveAmountX = %SARNSX%
			moveAmountX /= %SENSE%
			moveAmountY = %SARNSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cSARNSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cSARNSY%
			cmoveAmountY /= %SENSE%
	}
	
	if (SAR = 1) && (4xScope = 1) 
	{
			moveAmountX = %SAR4XX%
			moveAmountX /= %SENSE%
			moveAmountY = %SAR4XY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cSAR4XX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cSAR4XY%
			cmoveAmountY /= %SENSE%	
	}
	
	if (SAR = 1) && (Holosight = 1) 
	{
			moveAmountX = %SARHSX%
			moveAmountX /= %SENSE%
			moveAmountY = %SARHSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cSARHSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cSARHSY%
			cmoveAmountY /= %SENSE%	
	}
	
	if (SAR = 1) && (SimpleSight = 1)
	{
			moveAmountX = %SARSSX%
			moveAmountX /= %SENSE%
			moveAmountY = %SARSSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cSARSSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cSARSSY%
			cmoveAmountY /= %SENSE%
	}
	IniRead, SENSE, Settings.ini, SETTINGS, Sensitivity
	IniRead, RoF, Guns.ini, FireRate, FireRate
	
	if (M92 = 1) && (NoBarrel = 1)
	{
			refractory = %M92Refractory%
	}
	
	if (M92 = 1) && (MuzzleBoost = 1)
	{
			refractory = %M92RefractoryMuz%
	}
	
	if (SAR = 1) && (NoBarrel = 1)
	{
			refractory = %SARRefractory%
	}
	
	if (SAR = 1) && (MuzzleBoost = 1)
	{
			refractory = %SARRefractoryMuz%
	}
	
	
	If (MP5A4 = 1) || (m249 = 1) || (AK = 1) || (LR300 = 1) || (SMG = 1) || (Thompson = 1)
		GuiControl,,AUTO,1
	If (M92 = 1) || (SAR = 1) || (Python = 1) || (SHITSTOL = 1)
		GuiControl,,SEMI,1
	
	Gui, Submit, NoHide
	If (MP5A4 = 1) || (SMG = 1) || (Thompson = 1){
		GuiControl,, 4xScope, 0
		GuiControl, Disable, 4xScope
		}
	else GuiControl, Enable, 4xScope
	If (MP5A4 = 1) || (SMG = 1) || (Thompson = 1) || (LR300 = 1) || (Python = 1){
		GuiControl,, MuzzleBoost, 0
		GuiControl, Disable, MuzzleBoost
		}
	else GuiControl, Enable, MuzzleBoost
		
}

FireRate:
	GuiControl,, RFText2, Time Between Shots (ms):%FireRate%
	IniWrite, %FireRate%, Guns.ini, FireRate, FireRate
Return

;Return
SensitivityEnter:
Loop 2 {
	GuiControl,, SensitivityText, Sensitivity:%Sensitivity%
	IniWrite, %Sensitivity%, Settings.ini, SETTINGS, Sensitivity
}
Return
	
MinMaxKey:
	IniRead, GUIX, Settings.ini, SETTINGS, GuiLocX
	IniRead, GUIY, Settings.ini, SETTINGS, GuiLocY
	Gui, Submit, NoHide
	If (Hide = 1) {
		Gui, Show, x%GUIX% y%GUIY% w340 h400, SMEKT
		Gui, 2:Show, w0 h0 x%GUIX% y%GUIY%
		GuiControl,,Show,1
}
	Else 
	if (Show = 1) {
		GuiControl,, Hide, 1
		Gui, Show, w0 h0 x%GUIX% y%GUIY%, SMEKT
		Gui, 2:Show, w75 h50 x%GUIX% y%GUIY%
}
	Return
	
	
TBToggle:
	if(hideTB = false)
	{
		WinHide, ahk_class Shell_TrayWnd
		WinHide, Start ahk_class Button
		hideTB:= true
	}else
		 {
			WinShow, ahk_class Shell_TrayWnd
			WinShow, Start ahk_class Button
			hideTB:= false
		 }
RETURN


ColorSliderSubmit:
	sleep, 50
;-----------Translates the RGB from sliders to ARGB number, 255 is Transparency------------
	RGB:= Gdip_ToARGB(255, CSRed, CSGreen, CSBlue)
	IniWrite, %RGB%, Settings.ini, SETTINGS, RETICLECOLOR
	Run, "SMEKTHair.ahk"
Return

;---------Toggles the recoil script on and off
ToggleKey:
		Gui, Submit, NoHide
		If (Mod = 0) 
		{
			GuiControl,, PScript1, %a_Workingdir%\Images\On.png
			GuiControl,, PScript2, %a_Workingdir%\Images\On.png
			GuiControl,, PScript3, %a_Workingdir%\Images\On.png
			GuiControl,, PScript4, %a_Workingdir%\Images\On.png
			GuiControl, 2:, PScript5, %a_Workingdir%\Images\On.png
			GuiControl,,Mod,1
		}
		Else
			{
			GuiControl,, PScript1, %a_Workingdir%\Images\Off.png
			GuiControl,, PScript2, %a_Workingdir%\Images\Off.png
			GuiControl,, PScript3, %a_Workingdir%\Images\Off.png
			GuiControl,, PScript4, %a_Workingdir%\Images\Off.png
			GuiControl, 2:, PScript5, %a_Workingdir%\Images\Off.png
			GuiControl,,Mod,0
			}
Return


;-----Saves last selected screen reticle to settings.ini
Quad:
IniWrite, Quad.png, Settings.ini, SETTINGS, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return


Sniper:
IniWrite, SNIPER.png, Settings.ini, SETTINGS, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

ACOG:
IniWrite, ACOG.png, Settings.ini, SETTINGS, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

Cross:
IniWrite, CROSS.png, Settings.ini, SETTINGS, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

Dot:
IniWrite, DOT.png, Settings.ini, SETTINGS, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

VSight:
IniWrite, VSIGHT.png, Settings.ini, SETTINGS, CURRENTSIGHT
	sleep, 50
		Run, "SMEKTHair.ahk"
Return

GapDash:
IniWrite, GAPDASH.png, Settings.ini, SETTINGS, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

RangeFinder:
IniWrite, RANGEFINDER.png, Settings.ini, SETTINGS, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

XSight:
IniWrite, XSIGHT.png, Settings.ini, SETTINGS, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return
Honzo:
IniWrite, Honzo.png, Settings.ini, SETTINGS, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

WTF:
IniWrite, WTF.png, Settings.ini, SETTINGS, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

;//////////////////////////Save Settings//////////////////////
SaveSettings:
	IniWrite, %TOGGLEKEY%, Settings.ini, ChatHotKeys, TOGGLEHOTKEY
	IniWrite, %MINMAXKEY%, Settings.ini, ChatHotKeys, MINMAXHOTKEY
	IniWrite, %KILLKEY%, Settings.ini, ChatHotKeys, KILLHOTKEY
	IniWrite, %COMBATLOGKEY%, Settings.ini, ChatHotKeys, COMBATLOGHOTKEY
	IniWrite, %RoFTOGGLE%, Settings.ini, ChatHotKeys, RoFTOGGLE
	
	IniWrite, %CHAT1%, Settings.ini, ChatCommands, CHATCOMMAND1
	IniWrite, %CHATKEY1%, Settings.ini, ChatHotKeys, CHATHOTKEY1
	IniWrite, %CHAT2%, Settings.ini, ChatCommands, CHATCOMMAND2
	IniWrite, %CHATKEY2%, Settings.ini, ChatHotKeys, CHATHOTKEY2
	IniWrite, %CHAT3%, Settings.ini, ChatCommands, CHATCOMMAND3
	IniWrite, %CHATKEY3%, Settings.ini, ChatHotKeys, CHATHOTKEY3
	IniWrite, %CHAT4%, Settings.ini, ChatCommands, CHATCOMMAND4
	IniWrite, %CHATKEY4%, Settings.ini, ChatHotKeys, CHATHOTKEY4
	IniWrite, %CHAT5%, Settings.ini, ChatCommands, CHATCOMMAND5
	IniWrite, %CHATKEY5%, Settings.ini, ChatHotKeys, CHATHOTKEY5
	IniWrite, %CHAT6%, Settings.ini, ChatCommands, CHATCOMMAND6
	IniWrite, %CHATKEY6%, Settings.ini, ChatHotKeys, CHATHOTKEY6
	IniWrite, %CHAT7%, Settings.ini, ChatCommands, CHATCOMMAND7
	IniWrite, %CHATKEY7%, Settings.ini, ChatHotKeys, CHATHOTKEY7
	IniWrite, %CHAT8%, Settings.ini, ChatCommands, CHATCOMMAND8
	IniWrite, %CHATKEY8%, Settings.ini, ChatHotKeys, CHATHOTKEY8
	
	MsgBox, 0,, Settings Saved
;----Reload Script to Update Hotkeys----
	Reload
Return

;----Hotkey actions
RoFTOGGLE:
		Gui, Submit, NoHide
		If (FROn = 0) 
		{
			GuiControl,, FRPic, %a_Workingdir%\Images\FROn.png
			GuiControl,, FRPic2, %a_Workingdir%\Images\FROn.png
			GuiControl,, FRPic3, %a_Workingdir%\Images\FROn.png
			GuiControl,, FRPic4, %a_Workingdir%\Images\FROn.png
			GuiControl, 2:, FRPic5, %a_Workingdir%\Images\FROn.png
		GuiControl,,FROn, 1		
		}
		Else
		If (FROn = 1)
		{
			GuiControl,, FRPic, %a_Workingdir%\Images\FROff.png
			GuiControl,, FRPic2, %a_Workingdir%\Images\FROff.png
			GuiControl,, FRPic3, %a_Workingdir%\Images\FROff.png
			GuiControl,, FRPic4, %a_Workingdir%\Images\FROff.png
			GuiControl, 2:, FRPic5, %a_Workingdir%\Images\FROff.png
		GuiControl,,FROn, 0
		}
Return


ChatKey1:
	Send {Enter}
	Sleep, 100
	Send %CHAT1%
	Sleep, 5
	Send {Enter}
Return
ChatKey2:
	Send {Enter}
	Sleep, 100
	Send %CHAT2%
	Sleep, 5
	Send {Enter}
Return
ChatKey3:
	Send {Enter}
	Sleep, 100
	Send %CHAT3%
	Sleep, 5
	Send {Enter}
Return
ChatKey4:
	Send {Enter}
	Sleep, 100
	Send %CHAT4%
	Sleep, 5
	Send {Enter}
Return
ChatKey5:
	Send {Enter}
	Sleep, 100
	Send %CHAT5%
	Sleep, 5
	Send {Enter}
Return
ChatKey6:
	Send {Enter}
	Sleep, 100
	Send %CHAT6%
	Sleep, 5
	Send {Enter}
Return
ChatKey7:
	Send {Enter}
	Sleep, 100
	Send %CHAT7%
	Sleep, 5
	Send {Enter}
Return
ChatKey8:
	Send {Enter}
	Sleep, 100
	Send %CHAT8%
	Sleep, 5
	Send {Enter}
Return

;---This is suicide, not murder
KillKey:
	Send {F1}
	Sleep, 100
	Send kill
	Sleep, 5
	Send {Enter}
	Sleep, 15
	Send {F1}
Return
CombatLogKey:
	Send {F1}
	Sleep, 100
	Send combatlog
	Sleep, 5
	Send {Enter}
	Sleep, 15
Return

Close:
	CloseScript("SMEKTHair.ahk")
	WinShow, ahk_class Shell_TrayWnd  ; Show Taskbar
	WinShow, Start ahk_class Button
	ExitApp
Return

GuiMove:
	PostMessage, 0xA1, 2
	WinGetPos,Cx,Cy
	SLEEP, 20
	WinGetPos,Cx,Cy
	IniWrite, %Cx%, Settings.ini, SETTINGS, GuiLocX
	IniWrite, %Cy%, Settings.ini, SETTINGS, GuiLocY
return

Help:
	MsgBox, 0, Select gun and attachment and set your own hotkeys in the "Settings" tab to toggle. The "Settings" tab also includes commands (CMD1,2,3, or 4) which will auto fast-type whatever you want at the press of the designated keyswitch. This can be useful for quick /home or tp commands. Integrated full auto makes the semi-auto rifle and M92 machine guns by holding down trigger. The little red/green dot beside the script light represents the controlled fire status.(See config tab for Controlled Fire feature)  Will develop support for more attachments, and other cool shit! Keep an eye out for the latest patches.
Return

;----------------------------------------------------------------------------REGULAR----------------------------------------------------------------------------------------------------------

tune := 0
moveAmountX := 0
moveAmountY := 0
cmoveAmountX := 0
cmoveAmountY := 0
moveMultiplier := 1.5
;/////////////////////////THIS IS THE STANDING TRIGGER CODE/////////////////////////////////////////
~Ctrl & ~LButton::
MouseGetPos, myX, myY 
if myX between %XRes1% and %XRes2% ; the range for x
{

    if myY between %YRes1% and %YRes2% ; the range for y

    {
Loop
	If GetKeyState("LButton", "Ctrl") && (Mod = 1) && (AUTO = 1) && (FROn = 0) 
		{
			Sleep, %ctune%
			mouseXY(cmoveAmountX,cmoveAmountY)
		}
	else
		Break
	}
}

MouseGetPos, myX, myY 
if myX between %XRes1% and %XRes2% ; the range for x
{

    if myY between %YRes1% and %YRes2% ; the range for y

    {		
		If GetKeyState("LButton", "Ctrl") && (Mod = 1) && (SEMI = 1) && (FROn = 0)
		{
			Loop
			{
				GetKeyState, keystate, Lbutton,P
				if keystate = U
				break
					else
		If (Mod = 1) && (SEMI = 1)
			; do the click then loop
			MouseClick, left
			mouseXY(cmoveAmountX,cmoveAmountY)
			sleep, %refractory%
			}
		}
	}
}

MouseGetPos, myX, myY 
if myX between %XRes1% and %XRes2% ; the range for x
{

    if myY between %YRes1% and %YRes2% ; the range for y
    {
	If GetKeyState("LButton", "Ctrl") && (FROn = 1) && (Mod = 1)
Loop{
	GetKeyState, keystate, Lbutton,P
	if keystate = U
	break
	else
	If (Mod = 1) && (FROn = 1)
				MouseClick, left
				mouseXY(moveAmountX,cRoFRecoil)
				sleep, %RoF%
			}
		}
	}
return
Return

~LButton::
if(StandFire = 1)
{
	MouseGetPos, myX, myY 
	if myX between %XRes1% and %XRes2% ; the range for x
	{

		if myY between %YRes1% and %YRes2% ; the range for y

		{
	Loop
		If GetKeyState("LButton") && (Mod = 1) && (AUTO = 1) && (FROn = 0) 
			{
					If GetKeyState("w" || "s" || "a" || "d")
						{
						mouseXY((moveAmountX * moveMultiplier),(moveAmountY * moveMultiplier))
						}
				else
						{
						mouseXY(moveAmountX,moveAmountY)
						}
				Sleep, %tune%
			}
			else
				Break
		}
	}

	MouseGetPos, myX, myY 
	if myX between %XRes1% and %XRes2% ; the range for x
	{

		if myY between %YRes1% and %YRes2% ; the range for y
		{
	If GetKeyState("LButton") && (Mod = 1) && (SEMI = 1) && (FROn = 0)
	{
	Loop{
		GetKeyState, keystate, Lbutton,P
		if keystate = U
		break
		else
		If (Mod = 1) && (SEMI = 1)
	; do the click then loop
		MouseClick, left
		mouseXY(moveAmountX,moveAmountY)
		sleep, %refractory%
		}
	}
		}
	}
	;Burst Control Unit----------------------------------------------------
	MouseGetPos, myX, myY 
	if myX between %XRes1% and %XRes2% ; the range for x
	{

		if myY between %YRes1% and %YRes2% ; the range for y
		{
		If GetKeyState("LButton") && (FROn = 1) && (Mod = 1)
	Loop{
		GetKeyState, keystate, Lbutton,P
		if keystate = U
		break
		else
		If (Mod = 1) && (FROn = 1)
					MouseClick, left
					mouseXY(moveAmountX,RoFRecoil)
					sleep, %RoF%
				}
			}
		}
}else
	Sleep, 10
return

SMEKTHairOn:
	Run, "SMEKTHair.ahk"
return
SMEKTHairOff:
	CloseScript("SMEKTHair.ahk")
return


;------------------FUNCTIONS-------------------------------
CloseScript(Name)
{
	DetectHiddenWindows On
	SetTitleMatchMode RegEx
	IfWinExist, i)%Name%.* ahk_class AutoHotkey
		{
			WinClose
			WinWaitClose, i)%Name%.* ahk_class AutoHotkey, , 2
			If ErrorLevel
				return "Unable to close " . Name
			else
				return "Closed " . Name
		}
	else
		return Name . " not found"
}

mouseXY(x,y)
{
	x:= Round(x,1)
	y:= Round(y,1)
	DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
}

F7::
	Reload
Return
