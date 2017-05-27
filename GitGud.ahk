; Uncomment if Gdip.ahk is not in your standard library
#Include, Gdip.ahk
if FileExist("Settings.ini")
{
	}else{
;////////////////////////////////Initial Settings Values////////////////////////////
            ;Crosshair	
			IniWrite, CROSS.png, Settings.ini, SightSelected, CURRENTSIGHT
			FileAppend,`n,Settings.ini
			
			;Recoil Values
			IniWrite, 1.95, Settings.ini, RECOIL, AK (No Sight) Y
			IniWrite, 1.95, Settings.ini, RECOIL, AK (Simple Sight) Y
			IniWrite, 1.95, Settings.ini, RECOIL, AK (Holosight) Y
			IniWrite, 0.1, Settings.ini, RECOIL, AK (No Sight) X
			IniWrite, 0.1, Settings.ini, RECOIL, AK (Simple Sight) X
			IniWrite, 0.1, Settings.ini, RECOIL, AK (Holosight) X
			
			IniWrite, 47, Settings.ini, RECOIL, Shitstol (No Sight) Y
			IniWrite, 45, Settings.ini, RECOIL, Shitstol (Simple Sight) Y
			IniWrite, 47, Settings.ini, RECOIL, Shitstol (Holosight) Y
			IniWrite, -7, Settings.ini, RECOIL, Shitstol (No Sight) X
			IniWrite, -8.5, Settings.ini, RECOIL, Shitstol (Simple Sight) X
			IniWrite, -7, Settings.ini, RECOIL, Shitstol (Holosight) X
			
			IniWrite, 4.3, Settings.ini, RECOIL, MP5A4 (No Sight) Y
			IniWrite, 3.95, Settings.ini, RECOIL, MP5A4 (Simple Sight) Y
			IniWrite, 4.25, Settings.ini, RECOIL, MP5A4 (Holosight) Y
			IniWrite, -1.99, Settings.ini, RECOIL, MP5A4 (No Sight) X
			IniWrite, -1, Settings.ini, RECOIL, MP5A4 (Simple Sight) X
			IniWrite, -1.98, Settings.ini, RECOIL, MP5A4 (Holosight) X
			
			IniWrite, 47, Settings.ini, RECOIL, Semi-Automatic Rifle (No Sight) Y
			IniWrite, 38, Settings.ini, RECOIL, Semi-Automatic Rifle (Simple Sight) Y
			IniWrite, 43, Settings.ini, RECOIL, Semi-Automatic Rifle (Holosight) Y
			IniWrite, 175, Settings.ini, RECOIL, Semi-Automatic Rifle (4x Scope) Y
			IniWrite, -14, Settings.ini, RECOIL, Semi-Automatic Rifle (No Sight) X
			IniWrite, -9.7, Settings.ini, RECOIL, Semi-Automatic Rifle (Simple Sight) X
			IniWrite, -10, Settings.ini, RECOIL, Semi-Automatic Rifle (Holosight) X
			IniWrite, -49, Settings.ini, RECOIL, Semi-Automatic Rifle (4x Scope) X
			
			
			IniWrite, 2, Settings.ini, RECOIL, Thompson (No Sight) Y
			IniWrite, 1, Settings.ini, RECOIL, Thompson (Simple Sight) Y
			IniWrite, 1, Settings.ini, RECOIL, Thompson (Holosight) Y
			IniWrite, -1, Settings.ini, RECOIL, Thompson (No Sight) X
			IniWrite, -1, Settings.ini, RECOIL, Thompson (Simple Sight) X
			IniWrite, -1, Settings.ini, RECOIL, Thompson (Holosight) X
			
			IniWrite, 101, Settings.ini, RECOIL, Python (No Sight) Y
			IniWrite, 93, Settings.ini, RECOIL, Python (Simple Sight) Y
			IniWrite, 108, Settings.ini, RECOIL, Python (Holosight) Y
			IniWrite, 420, Settings.ini, RECOIL, Python (4x Scope) Y
			IniWrite, -26, Settings.ini, RECOIL, Python (No Sight) X
			IniWrite, -22, Settings.ini, RECOIL, Python (Simple Sight) X
			IniWrite, -27, Settings.ini, RECOIL, Python (Holosight) X
			IniWrite, -43, Settings.ini, RECOIL, Python (4x Scope) X
			
			IniWrite, 29, Settings.ini, RECOIL, M92 (No Sight) Y
			IniWrite, 26, Settings.ini, RECOIL, M92 (Simple Sight) Y
			IniWrite, 31, Settings.ini, RECOIL, M92 (Holosight) Y
			IniWrite, 142, Settings.ini, RECOIL, M92 (4x Scope) Y
			IniWrite, -9, Settings.ini, RECOIL, M92 (No Sight) X
			IniWrite, -9, Settings.ini, RECOIL, M92 (Simple Sight) X
			IniWrite, -10, Settings.ini, RECOIL, M92 (Holosight) X
			IniWrite, -34, Settings.ini, RECOIL, M92 (4x Scope) X
			
			
			IniWrite, 2.4, Settings.ini, RECOIL, SMG (No Sight) Y
			IniWrite, 2, Settings.ini, RECOIL, SMG (Simple Sight) Y
			IniWrite, 2, Settings.ini, RECOIL, SMG (Holosight) Y
			IniWrite, -0.5, Settings.ini, RECOIL, SMG (No Sight) X
			IniWrite, 0.2, Settings.ini, RECOIL, SMG (Simple Sight) X
			IniWrite, -0.2, Settings.ini, RECOIL, SMG (Holosight) X
			
			IniWrite, 4.3, Settings.ini, RECOIL, LR-300 (No Sight) Y
			IniWrite, 3.3, Settings.ini, RECOIL, LR-300 (Simple Sight) Y
			IniWrite, 3.8, Settings.ini, RECOIL, LR-300 (Holosight) Y
			IniWrite, 14, Settings.ini, RECOIL, LR-300 (4x Scope) Y
			IniWrite, -1, Settings.ini, RECOIL, LR-300 (No Sight) X
			IniWrite, -1, Settings.ini, RECOIL, LR-300 (Simple Sight) X
			IniWrite, -1, Settings.ini, RECOIL, LR-300 (Holosight) X
			IniWrite, -5, Settings.ini, RECOIL, LR-300 (4x Scope) X
			
			IniWrite, 5.5, Settings.ini, RECOIL, M249 (No Sight) Y
			IniWrite, 4, Settings.ini, RECOIL, M249 (Simple Sight) Y
			IniWrite, 5, Settings.ini, RECOIL, M249 (Holosight) Y
			IniWrite, 20, Settings.ini, RECOIL, M249 (4x Scope) Y
			IniWrite, -0.5, Settings.ini, RECOIL, M249 (No Sight) X
			IniWrite, -0.5, Settings.ini, RECOIL, M249 (Simple Sight) X
			IniWrite, -0.5, Settings.ini, RECOIL, M249 (Holosight) X
			IniWrite, -0.5, Settings.ini, RECOIL, M249 (4x Scope) X
			FileAppend,`n,Settings.ini
			
;////////////////////////////////////////CROUCH RECOIL////////////////////////////////////////		

			IniWrite, 0.8, Settings.ini,  CROUCHRECOIL, AK (No Sight) Y
			IniWrite, 0.8, Settings.ini, CROUCHRECOIL, AK (Simple Sight) Y
			IniWrite, 0.8, Settings.ini, CROUCHRECOIL, AK (Holosight) Y
			IniWrite, 0, Settings.ini, CROUCHRECOIL, AK (No Sight) X
			IniWrite, 0.1, Settings.ini, CROUCHRECOIL, AK (Simple Sight) X
			IniWrite, 0.1, Settings.ini, CROUCHRECOIL, AK (Holosight) X
			
			IniWrite, 23, Settings.ini, CROUCHRECOIL, Shitstol (No Sight) Y
			IniWrite, 23, Settings.ini, CROUCHRECOIL, Shitstol (Simple Sight) Y
			IniWrite, 23, Settings.ini, CROUCHRECOIL, Shitstol (Holosight) Y
			IniWrite, -3, Settings.ini, CROUCHRECOIL, Shitstol (No Sight) X
			IniWrite, -3, Settings.ini, CROUCHRECOIL, Shitstol (Simple Sight) X
			IniWrite, -3, Settings.ini, CROUCHRECOIL, Shitstol (Holosight) X
			
			IniWrite, 2.6, Settings.ini, CROUCHRECOIL, MP5A4 (No Sight) Y
			IniWrite, 2, Settings.ini, CROUCHRECOIL, MP5A4 (Simple Sight) Y
			IniWrite, 2, Settings.ini, CROUCHRECOIL, MP5A4 (Holosight) Y
			IniWrite, -1.1, Settings.ini, CROUCHRECOIL, MP5A4 (No Sight) X
			IniWrite, -1, Settings.ini, CROUCHRECOIL, MP5A4 (Simple Sight) X
			IniWrite, -1.2, Settings.ini, CROUCHRECOIL, MP5A4 (Holosight) X
			
			IniWrite, 20, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (No Sight) Y
			IniWrite, 24, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (Simple Sight) Y
			IniWrite, 22, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (Holosight) Y
			IniWrite, 87, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (4x Scope) Y
			IniWrite, -5, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (No Sight) X
			IniWrite, -6, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (Simple Sight) X
			IniWrite, -5, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (Holosight) X
			IniWrite, 25, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (4x Scope) X
			
			
			IniWrite, 1, Settings.ini, CROUCHRECOIL, Thompson (No Sight) Y
			IniWrite, 1, Settings.ini, CROUCHRECOIL, Thompson (Simple Sight) Y
			IniWrite, 1, Settings.ini, CROUCHRECOIL, Thompson (Holosight) Y
			IniWrite, -1, Settings.ini, CROUCHRECOIL, Thompson (No Sight) X
			IniWrite, -1, Settings.ini, CROUCHRECOIL, Thompson (Simple Sight) X
			IniWrite, -1, Settings.ini, CROUCHRECOIL, Thompson (Holosight) X
			
			IniWrite, 48, Settings.ini, CROUCHRECOIL, Python (No Sight) Y
			IniWrite, 54, Settings.ini, CROUCHRECOIL, Python (Simple Sight) Y
			IniWrite, 48, Settings.ini, CROUCHRECOIL, Python (Holosight) Y
			IniWrite, 210, Settings.ini, CROUCHRECOIL, Python (4x Scope) Y
			IniWrite, -10, Settings.ini, CROUCHRECOIL, Python (No Sight) X
			IniWrite, -12, Settings.ini, CROUCHRECOIL, Python (Simple Sight) X
			IniWrite, -10, Settings.ini, CROUCHRECOIL, Python (Holosight) X
			IniWrite, -21, Settings.ini, CROUCHRECOIL, Python (4x Scope) X			
			
			IniWrite, 15, Settings.ini, CROUCHRECOIL, M92 (No Sight) Y
			IniWrite, 15, Settings.ini, CROUCHRECOIL, M92 (Simple Sight) Y
			IniWrite, 15, Settings.ini, CROUCHRECOIL, M92 (Holosight) Y
			IniWrite, 81, Settings.ini, CROUCHRECOIL, M92 (4x Scope) Y
			IniWrite, -4, Settings.ini, CROUCHRECOIL, M92 (No Sight) X
			IniWrite, -4, Settings.ini, CROUCHRECOIL, M92 (Simple Sight) X
			IniWrite, -4, Settings.ini, CROUCHRECOIL, M92 (Holosight) X
			IniWrite, -22, Settings.ini, CROUCHRECOIL, M92 (4x Scope) X
			
			IniWrite, 1, Settings.ini, CROUCHRECOIL, SMG (No Sight) Y
			IniWrite, 1, Settings.ini, CROUCHRECOIL, SMG (Simple Sight) Y
			IniWrite, 1, Settings.ini, CROUCHRECOIL, SMG (Holosight) Y
			IniWrite, -0.2, Settings.ini, CROUCHRECOIL, SMG (No Sight) X
			IniWrite, -0.2, Settings.ini, CROUCHRECOIL, SMG (Simple Sight) X
			IniWrite, -0.2, Settings.ini, CROUCHRECOIL, SMG (Holosight) X
			
			IniWrite, 2.3, Settings.ini, CROUCHRECOIL, LR-300 (No Sight) Y
			IniWrite, 1.9, Settings.ini, CROUCHRECOIL, LR-300 (Simple Sight) Y
			IniWrite, 2.2, Settings.ini, CROUCHRECOIL, LR-300 (Holosight) Y
			IniWrite, 7, Settings.ini, CROUCHRECOIL, LR-300 (4x Scope) Y
			IniWrite, -1, Settings.ini, CROUCHRECOIL, LR-300 (No Sight) X
			IniWrite, -1, Settings.ini, CROUCHRECOIL, LR-300 (Simple Sight) X
			IniWrite, -1, Settings.ini, CROUCHRECOIL, LR-300 (Holosight) X
			IniWrite, -2, Settings.ini, CROUCHRECOIL, LR-300 (4x Scope) X
			
			IniWrite, 2.9, Settings.ini, CROUCHRECOIL, M249 (No Sight) Y
			IniWrite, 2.8, Settings.ini, CROUCHRECOIL, M249 (Simple Sight) Y
			IniWrite, 2.9, Settings.ini, CROUCHRECOIL, M249 (Holosight) Y
			IniWrite, 10, Settings.ini, CROUCHRECOIL, M249 (4x Scope) Y
			IniWrite, -0.5, Settings.ini, CROUCHRECOIL, M249 (No Sight) X
			IniWrite, -0.5, Settings.ini, CROUCHRECOIL, M249 (Simple Sight) X
			IniWrite, -0.5, Settings.ini, CROUCHRECOIL, M249 (Holosight) X
			IniWrite, -0.5, Settings.ini, CROUCHRECOIL, M249 (4x Scope) X
			FileAppend,`n,Settings.ini
			
			;Cusom Chat Inputs
			IniWrite, /home 1, Settings.ini, ChatCommands, CHATCOMMAND1
			IniWrite, /home 2, Settings.ini, ChatCommands, CHATCOMMAND2
			IniWrite, /clanui, Settings.ini, ChatCommands, CHATCOMMAND3
			IniWrite, /tpa, Settings.ini, ChatCommands, CHATCOMMAND4
			FileAppend,`n,Settings.ini
			
			;Custom Hotkeys
			IniWrite, ^Numpad7, Settings.ini, ChatHotKeys, TOGGLEHOTKEY
			IniWrite, ^Numpad8, Settings.ini, ChatHotKeys, MINMAXHOTKEY			
			IniWrite, NumpadSub, Settings.ini, ChatHotKeys, KILLHOTKEY			
			IniWrite, ^Numpad1, Settings.ini, ChatHotKeys, CHATHOTKEY1
			IniWrite, ^Numpad2, Settings.ini, ChatHotKeys, CHATHOTKEY2
			IniWrite, ^Numpad3, Settings.ini, ChatHotKeys, CHATHOTKEY3
			IniWrite, ^Numpad4, Settings.ini, ChatHotKeys, CHATHOTKEY4
			IniWrite, ^Numpad5, Settings.ini, ChatHotKeys, RapidfireHotkey
			FileAppend,`n,Settings.ini

			IniWrite, -16711936, Settings.ini, ColorSets, RETICLECOLOR
			FileAppend,`n,Settings.ini
			IniWrite, 1.0, Settings.ini, Sensitivity, Sensitivity
			FileAppend,`n,Settings.ini


		}
		
;//////////Variable: 1st 2 letters are gun, 2nd 2 letters are scope, last letter is coord///////////////////////////
			IniRead, AKNSY, Settings.ini, RECOIL, AK (No Sight) Y
			IniRead, AKSSY, Settings.ini, RECOIL, AK (Simple Sight) Y
			IniRead, AKHSY, Settings.ini, RECOIL, AK (Holosight) Y
			IniRead, AKNSX, Settings.ini, RECOIL, AK (No Sight) X
			IniRead, AKSSX, Settings.ini, RECOIL, AK (Simple Sight) X
			IniRead, AKHSX, Settings.ini, RECOIL, AK (Holosight) X
			
			IniRead, SHITNSY, Settings.ini, RECOIL, Shitstol (No Sight) Y
			IniRead, SHITSSY, Settings.ini, RECOIL, Shitstol (Simple Sight) Y
			IniRead, SHITHSY, Settings.ini, RECOIL, Shitstol (Holosight) Y
			IniRead, SHITNSX, Settings.ini, RECOIL, Shitstol (No Sight) X
			IniRead, SHITSSX, Settings.ini, RECOIL, Shitstol (Simple Sight) X
			IniRead, SHITHSX, Settings.ini, RECOIL, Shitstol (Holosight) X
			
			IniRead, MPNSY, Settings.ini, RECOIL, MP5A4 (No Sight) Y
			IniRead, MPSSY, Settings.ini, RECOIL, MP5A4 (Simple Sight) Y
			IniRead, MPHSY, Settings.ini, RECOIL, MP5A4 (Holosight) Y
			IniRead, MPNSX, Settings.ini, RECOIL, MP5A4 (No Sight) X
			IniRead, MPSSX, Settings.ini, RECOIL, MP5A4 (Simple Sight) X
			IniRead, MPHSX, Settings.ini, RECOIL, MP5A4 (Holosight) X
			
			IniRead, SARNSY, Settings.ini, RECOIL, Semi-Automatic Rifle (No Sight) Y
			IniRead, SARSSY, Settings.ini, RECOIL, Semi-Automatic Rifle (Simple Sight) Y
			IniRead, SARHSY, Settings.ini, RECOIL, Semi-Automatic Rifle (Holosight) Y
			IniRead, SAR4XY, Settings.ini, RECOIL, Semi-Automatic Rifle (4x Scope) Y
			IniRead, SARNSX, Settings.ini, RECOIL, Semi-Automatic Rifle (No Sight) X
			IniRead, SARSSX, Settings.ini, RECOIL, Semi-Automatic Rifle (Simple Sight) X
			IniRead, SARHSX, Settings.ini, RECOIL, Semi-Automatic Rifle (Holosight) X
			IniRead, SAR4XX, Settings.ini, RECOIL, Semi-Automatic Rifle (4x Scope) X
			
			IniRead, THNSY, Settings.ini, RECOIL, Thompson (No Sight) Y
			IniRead, THSSY, Settings.ini, RECOIL, Thompson (Simple Sight) Y
			IniRead, THHSY, Settings.ini, RECOIL, Thompson (Holosight) Y
			IniRead, THNSX, Settings.ini, RECOIL, Thompson (No Sight) X
			IniRead, THSSX, Settings.ini, RECOIL, Thompson (Simple Sight) X
			IniRead, THHSX, Settings.ini, RECOIL, Thompson (Holosight) X
			
			IniRead, PYNSY, Settings.ini, RECOIL, Python (No Sight) Y
			IniRead, PYSSY, Settings.ini, RECOIL, Python (Simple Sight) Y
			IniRead, PYHSY, Settings.ini, RECOIL, Python (Holosight) Y
			IniRead, PY4XY, Settings.ini, RECOIL, Python (4x Scope) Y
			IniRead, PYNSX, Settings.ini, RECOIL, Python (No Sight) X
			IniRead, PYSSX, Settings.ini, RECOIL, Python (Simple Sight) X
			IniRead, PYHSX, Settings.ini, RECOIL, Python (Holosight) X
			IniRead, PY4XX, Settings.ini, RECOIL, Python (4x Scope) X
			
			IniRead, M9NSY, Settings.ini, RECOIL, M92 (No Sight) Y
			IniRead, M9SSY, Settings.ini, RECOIL, M92 (Simple Sight) Y
			IniRead, M9HSY, Settings.ini, RECOIL, M92 (Holosight) Y	
			IniRead, M94XY, Settings.ini, RECOIL, M92 (4x Scope) Y
			IniRead, M9NSX, Settings.ini, RECOIL, M92 (No Sight) X
			IniRead, M9SSX, Settings.ini, RECOIL, M92 (Simple Sight) X
			IniRead, M9HSX, Settings.ini, RECOIL, M92 (Holosight) X
			IniRead, M94XX, Settings.ini, RECOIL, M92 (4x Scope) X
			
			IniRead, SMGNSY, Settings.ini, RECOIL, SMG (No Sight) Y
			IniRead, SMGSSY, Settings.ini, RECOIL, SMG (Simple Sight) Y
			IniRead, SMGHSY, Settings.ini, RECOIL, SMG (Holosight) Y
			IniRead, SMGNSX, Settings.ini, RECOIL, SMG (No Sight) X
			IniRead, SMGSSX, Settings.ini, RECOIL, SMG (Simple Sight) X
			IniRead, SMGHSX, Settings.ini, RECOIL, SMG (Holosight) X
			
			IniRead, LRNSY, Settings.ini, RECOIL, LR-300 (No Sight) Y
			IniRead, LRSSY, Settings.ini, RECOIL, LR-300 (Simple Sight) Y
			IniRead, LRHSY, Settings.ini, RECOIL, LR-300 (Holosight) Y
			IniRead, LR4XY, Settings.ini, RECOIL, LR-300 (4x Scope) Y
			IniRead, LRNSX, Settings.ini, RECOIL, LR-300 (No Sight) X
			IniRead, LRSSX, Settings.ini, RECOIL, LR-300 (Simple Sight) X
			IniRead, LRHSX, Settings.ini, RECOIL, LR-300 (Holosight) X
			IniRead, LR4XX, Settings.ini, RECOIL, LR-300 (4x Scope) X			
			
			IniRead, MGNSY, Settings.ini, RECOIL, M249 (No Sight) Y
			IniRead, MGSSY, Settings.ini, RECOIL, M249 (Simple Sight) Y
			IniRead, MGHSY, Settings.ini, RECOIL, M249 (Holosight) Y
			IniRead, MG4XY, Settings.ini, RECOIL, M249 (4x Scope) Y
			IniRead, MGNSX, Settings.ini, RECOIL, M249 (No Sight) X
			IniRead, MGSSX, Settings.ini, RECOIL, M249 (Simple Sight) X
			IniRead, MGHSX, Settings.ini, RECOIL, M249 (Holosight) X
			IniRead, MG4XX, Settings.ini, RECOIL, M249 (4x Scope) X			
;////////////////////////////////CROUCH RECOIL READ/////////////////////////////////////////
			IniRead, cAKNSY, Settings.ini, CROUCHRECOIL, AK (No Sight) Y
			IniRead, cAKSSY, Settings.ini, CROUCHRECOIL, AK (Simple Sight) Y
			IniRead, cAKHSY, Settings.ini, CROUCHRECOIL, AK (Holosight) Y
			IniRead, cAKNSX, Settings.ini, CROUCHRECOIL, AK (No Sight) X
			IniRead, cAKSSX, Settings.ini, CROUCHRECOIL, AK (Simple Sight) X
			IniRead, cAKHSX, Settings.ini, CROUCHRECOIL, AK (Holosight) X
			
			IniRead, cSHITNSY, Settings.ini, CROUCHRECOIL, Shitstol (No Sight) Y
			IniRead, cSHITSSY, Settings.ini, CROUCHRECOIL, Shitstol (Simple Sight) Y
			IniRead, cSHITHSY, Settings.ini, CROUCHRECOIL, Shitstol (Holosight) Y
			IniRead, cSHITNSX, Settings.ini, CROUCHRECOIL, Shitstol (No Sight) X
			IniRead, cSHITSSX, Settings.ini, CROUCHRECOIL, Shitstol (Simple Sight) X
			IniRead, cSHITHSX, Settings.ini, CROUCHRECOIL, Shitstol (Holosight) X
			
			IniRead, cMPNSY, Settings.ini, CROUCHRECOIL, MP5A4 (No Sight) Y
			IniRead, cMPSSY, Settings.ini, CROUCHRECOIL, MP5A4 (Simple Sight) Y
			IniRead, cMPHSY, Settings.ini, CROUCHRECOIL, MP5A4 (Holosight) Y
			IniRead, cMPNSX, Settings.ini, CROUCHRECOIL, MP5A4 (No Sight) X
			IniRead, cMPSSX, Settings.ini, CROUCHRECOIL, MP5A4 (Simple Sight) X
			IniRead, cMPHSX, Settings.ini, CROUCHRECOIL, MP5A4 (Holosight) X
			
			IniRead, cSARNSY, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (No Sight) Y
			IniRead, cSARSSY, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (Simple Sight) Y
			IniRead, cSARHSY, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (Holosight) Y
			IniRead, cSAR4XY, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (4x Scope) Y
			IniRead, cSARNSX, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (No Sight) X
			IniRead, cSARSSX, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (Simple Sight) X
			IniRead, cSARHSX, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (Holosight) X
			IniRead, cSAR4XX, Settings.ini, CROUCHRECOIL, Semi-Automatic Rifle (4x Scope) X
			
			IniRead, cTHNSY, Settings.ini, CROUCHRECOIL, Thompson (No Sight) Y
			IniRead, cTHSSY, Settings.ini, CROUCHRECOIL, Thompson (Simple Sight) Y
			IniRead, cTHHSY, Settings.ini, CROUCHRECOIL, Thompson (Holosight) Y
			IniRead, cTHNSX, Settings.ini, CROUCHRECOIL, Thompson (No Sight) X
			IniRead, cTHSSX, Settings.ini, CROUCHRECOIL, Thompson (Simple Sight) X
			IniRead, cTHHSX, Settings.ini, CROUCHRECOIL, Thompson (Holosight) X
			
			IniRead, cPYNSY, Settings.ini, CROUCHRECOIL, Python (No Sight) Y
			IniRead, cPYSSY, Settings.ini, CROUCHRECOIL, Python (Simple Sight) Y
			IniRead, cPYHSY, Settings.ini, CROUCHRECOIL, Python (Holosight) Y
			IniRead, cPY4XY, Settings.ini, CROUCHRECOIL, Python (4x Scope) Y
			IniRead, cPYNSX, Settings.ini, CROUCHRECOIL, Python (No Sight) X
			IniRead, cPYSSX, Settings.ini, CROUCHRECOIL, Python (Simple Sight) X
			IniRead, cPYHSX, Settings.ini, CROUCHRECOIL, Python (Holosight) X
			IniRead, cPY4XX, Settings.ini, CROUCHRECOIL, Python (4x Scope) X
			
			IniRead, cM9NSY, Settings.ini, CROUCHRECOIL, M92 (No Sight) Y
			IniRead, cM9SSY, Settings.ini, CROUCHRECOIL, M92 (Simple Sight) Y
			IniRead, cM9HSY, Settings.ini, CROUCHRECOIL, M92 (Holosight) Y
			IniRead, cM94XY, Settings.ini, CROUCHRECOIL, M92 (4x Scope) Y			
			IniRead, cM9NSX, Settings.ini, CROUCHRECOIL, M92 (No Sight) X
			IniRead, cM9SSX, Settings.ini, CROUCHRECOIL, M92 (Simple Sight) X
			IniRead, cM9HSX, Settings.ini, CROUCHRECOIL, M92 (Holosight) X
			IniRead, cM94XX, Settings.ini, CROUCHRECOIL, M92 (4x Scope) X	
	
			IniRead, cSMGNSY, Settings.ini, CROUCHRECOIL, SMG (No Sight) Y
			IniRead, cSMGSSY, Settings.ini, CROUCHRECOIL, SMG (Simple Sight) Y
			IniRead, cSMGHSY, Settings.ini, CROUCHRECOIL, SMG (Holosight) Y
			IniRead, cSMGNSX, Settings.ini, CROUCHRECOIL, SMG (No Sight) X
			IniRead, cSMGSSX, Settings.ini, CROUCHRECOIL, SMG (Simple Sight) X
			IniRead, cSMGHSX, Settings.ini, CROUCHRECOIL, SMG (Holosight) X
			
			IniRead, cLRNSY, Settings.ini, CROUCHRECOIL, LR-300 (No Sight) Y
			IniRead, cLRSSY, Settings.ini, CROUCHRECOIL, LR-300 (Simple Sight) Y
			IniRead, cLRHSY, Settings.ini, CROUCHRECOIL, LR-300 (Holosight) Y
			IniRead, cLR4XY, Settings.ini, CROUCHRECOIL, LR-300 (4x Scope) Y
			IniRead, cLRNSX, Settings.ini, CROUCHRECOIL, LR-300 (No Sight) X
			IniRead, cLRSSX, Settings.ini, CROUCHRECOIL, LR-300 (Simple Sight) X
			IniRead, cLRHSX, Settings.ini, CROUCHRECOIL, LR-300 (Holosight) X
			IniRead, cLR4XX, Settings.ini, CROUCHRECOIL, LR-300 (4x Scope) X
			
			IniRead, cMGNSY, Settings.ini, CROUCHRECOIL, M249 (No Sight) Y
			IniRead, cMGSSY, Settings.ini, CROUCHRECOIL, M249 (Simple Sight) Y
			IniRead, cMGHSY, Settings.ini, CROUCHRECOIL, M249 (Holosight) Y
			IniRead, cMG4XY, Settings.ini, CROUCHRECOIL, M249 (4x Scope) Y
			IniRead, cMGNSX, Settings.ini, CROUCHRECOIL, M249 (No Sight) X
			IniRead, cMGSSX, Settings.ini, CROUCHRECOIL, M249 (Simple Sight) X
			IniRead, cMGHSX, Settings.ini, CROUCHRECOIL, M249 (Holosight) X
			IniRead, cMG4XX, Settings.ini, CROUCHRECOIL, M249 (4x Scope) X
			IniRead, SENSE, Settings.ini, Sensitivity, Sensitivity			

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
Gui, Show, x0 y0 w340 h400, SMEKT
gui, +AlwaysOnTop
Gui, Add, Tab2, x1 y25 w340 h390 , Loadout|Reticle|Settings|Config
Gui, Font, s6 c7BF106
;------------------------------------------------------Loadout Tab------------------------------------------
Gui, tab, Loadout
Gui, Font, s8 c7BF106
Gui, Add, Text, x5 y70  Center w340 h10, ------------------------------------------------------------------------------------
Gui, Add, Text, x5 y56  Center w340 h20, Select Weapon
Gui, Font, s6 c7BF106
Gui, Add, Picture, x290 y1 vPScript1, %a_Workingdir%\Images\Off.png
Gui, Add, Picture, x240 y1 vPBurst1, %a_Workingdir%\Images\BurstOff.png
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

Gui, add, button, x5 y370 w45 h20 gHelp, Help
Gui, add, button, x60 y370 w45 h20 gClose, Close
Gui, add, radio, x380 y45 w70 h20 vHide, Hide
Gui, add, radio, x380 y25 w70 h20 vShow, Show
Gui, add, button, x380 y30 w20 h10, Filler
Gui, add, button, x380 y30 w20 h10, Filler
Gui, add, radio, x380 y65 w70 h25 vMod, Mod
Gui, add, radio, x380 y25 w70 h25 vOff, Off
;------------------------------------------------------Reticle Tab------------------------------------------
Gui, tab, Reticle
Gui, add, button, x5 y370 w45 h20 gHelp, Help
Gui, add, button, x60 y370 w45 h20 gClose, Close
Gui, Add, Picture, x290 y1 vPScript2, %a_Workingdir%\Images\Off.png
Gui, Add, Picture, x240 y1 vPBurst2, %a_Workingdir%\Images\BurstOff.png
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

;----------------Color Slider-----------------------
IniRead, RETCOLOR, Settings.ini, ColorSets, RETICLECOLOR
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
Gui, add, button, x60 y370 w45 h20 gClose, Close
Gui, Add, Picture, x290 y1 vPScript3, %a_Workingdir%\Images\Off.png
Gui, Add, Picture, x240 y1 vPBurst3, %a_Workingdir%\Images\BurstOff.png
Gui, Font, s7 c7BF106
Guicontrol,,Show,1
Guicontrol,,Mod,0
Guicontrol,,SAR,1
Guicontrol,,Cross,1
Guicontrol,,Semi,1
Guicontrol,,NoSight,1
GuiControl,,SMEKTHairOn,1

;--------------------Git saved vales from settings----------------------
IniRead, TOGGLEKEY, Settings.ini, ChatHotKeys, TOGGLEHOTKEY
IniRead, MINMAXKEY, Settings.ini, ChatHotKeys, MINMAXHOTKEY
IniRead, KILLKEY, Settings.ini, ChatHotKeys, KILLHOTKEY
IniRead, CHAT1, Settings.ini, ChatCommands, CHATCOMMAND1
IniRead, CHATKEY1, Settings.ini, ChatHotKeys, CHATHOTKEY1
IniRead, CHAT2, Settings.ini, ChatCommands, CHATCOMMAND2
IniRead, CHATKEY2, Settings.ini, ChatHotKeys, CHATHOTKEY2
IniRead, CHAT3, Settings.ini, ChatCommands, CHATCOMMAND3
IniRead, CHATKEY3, Settings.ini, ChatHotKeys, CHATHOTKEY3
IniRead, CHAT4, Settings.ini, ChatCommands, CHATCOMMAND4
IniRead, CHATKEY4, Settings.ini, ChatHotKeys, CHATHOTKEY4
IniRead, RFHotkey, Settings.ini, ChatHotKeys, RapidfireHotkey


Gui, add, Text, x8 y95 w110 h13, Custom Commands
Gui, add, Text, x155 y95 w110 h13, Key

Gui, add, Text, x8 y110 w100 h20, TOGGLE
Gui, Add, Hotkey, vToggleKey x155 y110 w100 h20,%TOGGLEKEY%

Gui, add, Text, x8 y130 w100 h20, MINMAX
Gui, Add, Hotkey, vMinMaxKey x155 y130 w100 h20,%MINMAXKEY%

Gui, add, Text, x8 y150 w100 h20, KILL
Gui, Add, Hotkey, vKillKey x155 y150 w100 h20,%KILLKEY%

Gui, add, Text, x8 y170 w100 h20, CMD1
Gui, Add, Edit, x55 y170 w100 h20 vCHAT1, %CHAT1%
Gui, Add, Hotkey, vChatKey1 x155 y170 w100 h20,%CHATKEY1%

Gui, add, Text, x8 y190 w100 h20, CMD2
Gui, Add, Edit, x55 y190 w100 h20 vCHAT2, %CHAT2%
Gui, Add, Hotkey, vChatKey2 x155 y190 w100 h20,%CHATKEY2%

Gui, add, Text, x8 y210 w100 h20, CMD3
Gui, Add, Edit, x55 y210 w100 h20 vCHAT3, %CHAT3%
Gui, Add, Hotkey, vChatKey3 x155 y210 w100 h20,%CHATKEY3%

Gui, add, Text, x8 y230 w100 h20, CMD4
Gui, Add, Edit, x55 y230 w100 h20 vCHAT4, %CHAT4%
Gui, Add, Hotkey, vChatKey4 x155 y230 w100 h20,%CHATKEY4%

Gui, add, button, x115 y370 w45 h20 gSaveSettings, Save
;Set Hotkeys
	Hotkey, %TOGGLEKEY%, ToggleKey
	Hotkey, %MINMAXKEY%, MinMaxKey
	Hotkey, %KILLKEY%, KillKey
	Hotkey, %CHATKEY1%, ChatKey1
	Hotkey, %CHATKEY2%, ChatKey2
	Hotkey, %CHATKEY3%, ChatKey3
	Hotkey, %CHATKEY4%, ChatKey4
	Hotkey, %RFHOTKEY%, RFHotkey
	
Gui, add, Text, x8 y255 w120 h15, Burst Toggle Hotkey
Gui, Add, Hotkey, x155 y250 w100 h20 vRFHotkey,%RFHOTKEY%
	
	
;/////////////////////////////////////////Config Tab////////////////////////////////////////

Gui, tab, Config
Gui, Font, s6 c0000
Gui, add, button, x5 y370 w45 h20 gHelp, Help
Gui, add, button, x60 y370 w45 h20 gClose, Close
Gui, Add, Picture, x290 y1 vPScript4, %a_Workingdir%\Images\Off.png
Gui, Add, Picture, x240 y1 vPBurst4, %a_Workingdir%\Images\BurstOff.png
Gui, Font, s7 c7BF106
Gui, add, text, x3 y60 w332 h15 Center, =================BURST EDITOR=================
Gui, add, text, x3 y180 w332 h15 Center, ==============SENSITIVITY SELECT==============
Gui, Font, s7 c0000
Gui, add, edit, x15 y270 w70 h20 vSensitivity, %SENSE%
Gui, add, edit, x15 y90 w70 h20 vBurstSpeed, 90 
Gui, Font, s7 cRed
Gui, add, text, x3 y200 w290 h55 Center, Input your RUST Sensitivity below and press Enter.
Gui, Font, s7 c7BF106
Gui, add, text, x10 y255 w80 h15 Center vSensitivityText, Sensitivity
Gui, Add, Slider, x5 y135 w200 h20 vRapidFire AltSubmit gRapidFire Range1-15, 1
Gui, add, button, x85 y270 w40 h20 gSensitivityEnter, Enter
Gui, add, button, x130 y90 w70 h20 gBurstExamples, Examples
Gui, add, text, x15 y120 w180 h12 vRFText Center, Shots per Burst:1
Gui, add, text, x5 y75 w180 h12 vRFText2, Time Between Shots (ms):90
Gui, add, button, x85 y90 w40 h20 gBurstSpeed, Enter
Gui, Font, s6 c7BF106
gui, add, radio, x930 y300 w50 h15 vRFOn, On
gui, add, radio, x980 y300 w50 h15 vRFOff, Off
Guicontrol,,RFOff, 1

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
Gui, 2:Add, Picture, x1 y1 vPBurst5, %a_Workingdir%\Images\BurstOff.png
Gui, 2:Add, Picture, x50 y1 vPScript5, %a_Workingdir%\Images\Off.png
;------This Fucking Loop IS required :(
Loop {
	sleep 250		
		Gui, Submit, NoHide
	If (MP5A4 = 1) && (NoSight = 1)
	{
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
			moveAmountX = %AKNSX%
			moveAmountX /= %SENSE%
			moveAmountY = %AKNSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cAKNSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cAKNSY%
			cmoveAmountY /= %SENSE%	
	}

	If (AK = 1) && (SimpleSight = 1)
	{
			moveAmountX = %AKSSX%
			moveAmountX /= %SENSE%
			moveAmountY = %AKSSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cAKSSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cAKSSY%
			cmoveAmountY /= %SENSE%	
			
	}

	If (AK = 1) && (HoloSight = 1)
	{
			moveAmountX = %AKHSX%
			moveAmountX /= %SENSE%
			moveAmountY = %AKHSY%
			moveAmountY /= %SENSE%
			cmoveAmountX = %cAKHSX%
			cmoveAmountX /= %SENSE%
			cmoveAmountY = %cAKHSY%
			cmoveAmountY /= %SENSE%		
	}

	if (SMG = 1) && (NoSight = 1)
	{
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
	IniRead, SENSE, Settings.ini, Sensitivity, Sensitivity
	
	If (MP5A4 = 1) || (m249 = 1) || (AK = 1) || (LR300 = 1) || (SMG = 1) || (Thompson = 1)
		GuiControl,,AUTO,1
	If (M92 = 1) || (SAR = 1) || (Python = 1) || (SHITSTOL = 1)
		GuiControl,,SEMI,1
	
	Gui, Submit, NoHide
	If (MP5A4 = 1) || (SMG = 1) || (Thompson = 1) || (AK = 1){
		GuiControl,, 4xScope, 0
		GuiControl, Disable, 4xScope
		}
	else GuiControl, Enable, 4xScope
}
;Return

BurstExamples:
	MsgBox, Every gun has its own refractory period that locks out the next shot. Known refractory period values are: M92=90 ms   Semi-Automatic Rifle=150 ms  -Enter these into the Burst Editor for optimal burst with specified gun, or create your own!
Return

SensitivityEnter:
Loop 2 {
	GuiControl,, SensitivityText, Sensitivity:%Sensitivity%
	IniWrite, %Sensitivity%, Settings.ini, Sensitivity, Sensitivity
}
Return

BurstSpeed:
	GuiControl,, RFText2, Time Between Shots (ms):%BurstSpeed%
Return
	
RapidFire:
	GuiControl,, RFText, Shots per Burst:%RapidFire%	
	If (RapidFire = 15)
		GuiControl,, RFText, !!!BURN IT!!!
Return

MinMaxKey:
	Gui, Submit, NoHide
	If (Hide = 1) {
		Gui, Show, w340 h400, SMEKT
		Gui, 2:Show, w0 h0
		GuiControl,,Show,1
}
	Else 
	if (Show = 1) {
		GuiControl,, Hide, 1
		Gui, Show, w0 h0, SMEKT
		Gui, 2:Show, w100 h50
}
	Return

ColorSliderSubmit:
	sleep, 50
;-----------Translates the RGB from sliders to ARGB number, 255 is Transparency------------
	RGB:= Gdip_ToARGB(255, CSRed, CSGreen, CSBlue)
	IniWrite, %RGB%, Settings.ini, ColorSets, RETICLECOLOR
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
IniWrite, Quad.png, Settings.ini, SightSelected, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return


Sniper:
IniWrite, SNIPER.png, Settings.ini, SightSelected, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

ACOG:
IniWrite, ACOG.png, Settings.ini, SightSelected, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

Cross:
IniWrite, CROSS.png, Settings.ini, SightSelected, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

Dot:
IniWrite, DOT.png, Settings.ini, SightSelected, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

VSight:
IniWrite, VSIGHT.png, Settings.ini, SightSelected, CURRENTSIGHT
	sleep, 50
		Run, "SMEKTHair.ahk"
Return

GapDash:
IniWrite, GAPDASH.png, Settings.ini, SightSelected, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

RangeFinder:
IniWrite, RANGEFINDER.png, Settings.ini, SightSelected, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

XSight:
IniWrite, XSIGHT.png, Settings.ini, SightSelected, CURRENTSIGHT
		Run, "SMEKTHair.ahk"
Return

;//////////////////////////Save Settings//////////////////////
SaveSettings:
	IniWrite, %TOGGLEKEY%, Settings.ini, ChatHotKeys, TOGGLEHOTKEY
	IniWrite, %MINMAXKEY%, Settings.ini, ChatHotKeys, MINMAXHOTKEY
	IniWrite, %KILLKEY%, Settings.ini, ChatHotKeys, KILLHOTKEY
	IniWrite, %CHAT1%, Settings.ini, ChatCommands, CHATCOMMAND1
	IniWrite, %CHATKEY1%, Settings.ini, ChatHotKeys, CHATHOTKEY1
	IniWrite, %CHAT2%, Settings.ini, ChatCommands, CHATCOMMAND2
	IniWrite, %CHATKEY2%, Settings.ini, ChatHotKeys, CHATHOTKEY2
	IniWrite, %CHAT3%, Settings.ini, ChatCommands, CHATCOMMAND3
	IniWrite, %CHATKEY3%, Settings.ini, ChatHotKeys, CHATHOTKEY3
	IniWrite, %CHAT4%, Settings.ini, ChatCommands, CHATCOMMAND4
	IniWrite, %CHATKEY4%, Settings.ini, ChatHotKeys, CHATHOTKEY4
	IniWrite, %RFHOTKEY%, Settings.ini, ChatHotKeys, RapidfireHotkey
	MsgBox, 0,, Settings Saved
;----Reload Script to Update Hotkeys----
	Reload
Return

;----Hotkey actions
RFHotkey:
	Gui, Submit, NoHide
	If (RFOn = 0) {
		GuiControl,,RFOn,1 
		GuiControl,, PBurst1, %a_Workingdir%\Images\BurstOn.png	
		GuiControl,, PBurst2, %a_Workingdir%\Images\BurstOn.png
		GuiControl,, PBurst3, %a_Workingdir%\Images\BurstOn.png	
		GuiControl,, PBurst4, %a_Workingdir%\Images\BurstOn.png	
		GuiControl, 2:, PBurst5, %a_Workingdir%\Images\BurstOn.png	
	}
		else {
		GuiControl,,RFOff,1
		GuiControl,, PBurst1, %a_Workingdir%\Images\BurstOff.png	
		GuiControl,, PBurst2, %a_Workingdir%\Images\BurstOff.png
		GuiControl,, PBurst3, %a_Workingdir%\Images\BurstOff.png	
		GuiControl,, PBurst4, %a_Workingdir%\Images\BurstOff.png	
		GuiControl, 2:, PBurst5, %a_Workingdir%\Images\BurstOff.png		
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


Close:
	CloseScript("SMEKTHair.ahk")
	ExitApp
Return

GuiMove:
   PostMessage, 0xA1, 2
return

Help:
	MsgBox, 0, Step1:Git  Step 2:Gud, Select gun and attachment and set your own hotkeys in the "Settings" tab to toggle. The "Settings" tab also includes commands (CMD1,2,3, or 4) which will auto fast-type whatever you want at the press of the designated keyswitch. This can be useful for quick /home or tp commands. USE A MUZZLE BREAK WITH THE AK (This is the only way to get a non-RNG horizontal spray with no recoil). Will develop support for more attachments, and other cool shit! Keep an eye out for the latest patches.
Return

;----------------------------------------------------------------------------REGULAR----------------------------------------------------------------------------------------------------------

moveAmountX := 0
moveAmountY := 0
cmoveAmountX := 0
cmoveAmountY := 0


;/////////////////////////THIS IS THE STANDING TRIGGER CODE/////////////////////////////////////////

~LCtrl & ~LButton::
Loop
	If GetKeyState("LButton", "LCtrl") && (Mod = 1) && (RFOff = 1) && (AUTO = 1) 
		{
			Sleep, 5
			mouseXY(cmoveAmountX,cmoveAmountY)
		}
	else
		Break
	
	If GetKeyState("LButton", "LCtrl") && (RFOff = 1) && (Mod = 1) && (SEMI = 1)
		{
			Sleep, 5
			mouseXY(cmoveAmountX,cmoveAmountY)
			Sleep, 100
		}
	If GetKeyState("LButton", "LCtrl") && (RFOn = 1) && (Mod = 1)
		Loop, %RapidFire%
			{
				MouseClick, left
				mouseXY(cmoveAmountX,cmoveAmountY)
				sleep, %BurstSpeed%
			}
Return

~LButton::
Loop
		If GetKeyState("LButton") && (RFOff = 1) && (Mod = 1) && (AUTO = 1) 
		{
			Sleep, 5
			mouseXY(moveAmountX,moveAmountY)
		}
		else
			Break
		
	If GetKeyState("LButton") && (RFOn = 1) && (Mod = 1)
		Loop, %RapidFire%
			{
				MouseClick, left
				mouseXY(moveAmountX,moveAmountY)
				sleep, %BurstSpeed%
			}

	If GetKeyState("LButton") && (RFOff = 1) && (Mod = 1) && (SEMI = 1)
		{
			Sleep, 5
			mouseXY(moveAmountX,moveAmountY)
			Sleep, 100
		}
Return

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
DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
}	

F7::
	Reload
Return




;Experiment
;~f::
;{
;	MouseGetPos, xpos2, ypos2
;		Loop 20 {
;			sleep, 5
;			mouseXY(0,5)
;		}
;	MouseGetPos, xpos1, ypos1
;		xpos = %xpos1%
;		xpos -= %xpos2%
;		ypos = %ypos1%
;		ypos -= %ypos2%
;	SplashTextOn, 200, 90, Test, The cursor is at X%xpos% Y%ypos%
;		sleep, 1000
;	SplashTextOff
;}
;return