;Add all the defualt values to the settings.ini
if FileExist("Settings.ini")
{
	;IniRead, GUIXCK, Settings.ini, SETTINGS, GuiLocX
	;IniRead, GUIYCK, Settings.ini, SETTINGS, GuiLocY
	;if(GUIXCK = "ERROR" || GUIYCK = "ERROR")
	;{
	;	IniWrite, 0, Settings.ini, SETTINGS, GuiLocX
	;	IniWrite, 0, Settings.ini, SETTINGS, GuiLocY
	;	FileAppend,`n,Settings.ini
	;}
	
	}else{
;////////////////////////////////Initial Settings Values////////////////////////////
			;GuiLocation
			IniWrite, 0, Settings.ini, SETTINGS, GuiLocX
			IniWrite, 0, Settings.ini, SETTINGS, GuiLocY
			
			;Crosshair	
			IniWrite, CROSS.png, Settings.ini, SETTINGS, CURRENTSIGHT
			
			;Reticle Color
			IniWrite, -16711936, Settings.ini, SETTINGS, RETICLECOLOR
			
			;Script sensitivity modifier
			IniWrite, 1.0, Settings.ini, SETTINGS, Sensitivity
			
			;Reticle Move Modifier
			IniWrite, 0, Settings.ini, SETTINGS, RYmove
			IniWrite, 0, Settings.ini, SETTINGS, RXmove
			FileAppend,`n,Settings.ini
			
			;Cusom Chat Inputs
			IniWrite, /home 1, Settings.ini, ChatCommands, CHATCOMMAND1
			IniWrite, /home 2, Settings.ini, ChatCommands, CHATCOMMAND2
			IniWrite, /clanui, Settings.ini, ChatCommands, CHATCOMMAND3
			IniWrite, /tpa, Settings.ini, ChatCommands, CHATCOMMAND4
			IniWrite, /tpa, Settings.ini, ChatCommands, CHATCOMMAND5
			IniWrite, /tpa, Settings.ini, ChatCommands, CHATCOMMAND6
			IniWrite, /tpa, Settings.ini, ChatCommands, CHATCOMMAND7
			IniWrite, /tpa, Settings.ini, ChatCommands, CHATCOMMAND8
			FileAppend,`n,Settings.ini
			
			;Custom Hotkeys
			IniWrite, Numpad7, Settings.ini, ChatHotKeys, TOGGLEHOTKEY
			IniWrite, Numpad8, Settings.ini, ChatHotKeys, MINMAXHOTKEY			
			IniWrite, NumpadSub, Settings.ini, ChatHotKeys, KILLHOTKEY	
			IniWrite, NumpadAdd, Settings.ini, ChatHotKeys, RoFTOGGLE
			IniWrite, Numpad1, Settings.ini, ChatHotKeys, COMBATLOGHOTKEY
			IniWrite, ^Numpad1, Settings.ini, ChatHotKeys, CHATHOTKEY1
			IniWrite, ^Numpad2, Settings.ini, ChatHotKeys, CHATHOTKEY2
			IniWrite, ^Numpad3, Settings.ini, ChatHotKeys, CHATHOTKEY3
			IniWrite, ^Numpad4, Settings.ini, ChatHotKeys, CHATHOTKEY4
			IniWrite, ^Numpad5, Settings.ini, ChatHotKeys, CHATHOTKEY5
			IniWrite, ^Numpad6, Settings.ini, ChatHotKeys, CHATHOTKEY6
			IniWrite, ^Numpad7, Settings.ini, ChatHotKeys, CHATHOTKEY7
			IniWrite, ^Numpad8, Settings.ini, ChatHotKeys, CHATHOTKEY8
			FileAppend,`n,Settings.ini				

		 }

if FileExist("Guns.ini")
{
	}else{
;////////////////////////////////Automatic Tuning in MS////////////////////////////
			IniWrite, 52, Guns.ini, TUNING (Sleeps), AK (No Sight)
			IniWrite, 38, Guns.ini, TUNING (Sleeps), AK (Simple Sight)
			IniWrite, 52, Guns.ini, TUNING (Sleeps), AK (Holosight)
			IniWrite, 52, Guns.ini, TUNING (Sleeps), AK (4x Scope)

			IniWrite, 36, Guns.ini, TUNING (Sleeps), MP5A4 (No Sight)
			IniWrite, 34, Guns.ini, TUNING (Sleeps), MP5A4 (Simple Sight)
			IniWrite, 36, Guns.ini, TUNING (Sleeps), MP5A4 (Holosight)		
			
			IniWrite, 51, Guns.ini, TUNING (Sleeps), Thompson (No Sight)
			IniWrite, 51, Guns.ini, TUNING (Sleeps), Thompson (Simple Sight)
			IniWrite, 46, Guns.ini, TUNING (Sleeps), Thompson (Holosight)
			
			IniWrite, 35, Guns.ini, TUNING (Sleeps), SMG (No Sight)
			IniWrite, 35, Guns.ini, TUNING (Sleeps), SMG (Simple Sight)
			IniWrite, 35, Guns.ini, TUNING (Sleeps), SMG (Holosight)
			
			IniWrite, 35, Guns.ini, TUNING (Sleeps), LR-300 (No Sight)
			IniWrite, 35, Guns.ini, TUNING (Sleeps), LR-300 (Simple Sight)
			IniWrite, 35, Guns.ini, TUNING (Sleeps), LR-300 (Holosight)
			IniWrite, 20, Guns.ini, TUNING (Sleeps), LR-300 (4x Scope)
			
			IniWrite, 29, Guns.ini, TUNING (Sleeps), M249 (No Sight)
			IniWrite, 29, Guns.ini, TUNING (Sleeps), M249 (Simple Sight)
			IniWrite, 29, Guns.ini, TUNING (Sleeps), M249 (Holosight)
			IniWrite, 29, Guns.ini, TUNING (Sleeps), M249 (4x Scope)
			FileAppend,`n,Guns.ini
			
			IniWrite, 20, Guns.ini, CROUCHTUNING (Sleeps), AK (No Sight)
			IniWrite, 45, Guns.ini, CROUCHTUNING (Sleeps), AK (Simple Sight)
			IniWrite, 37, Guns.ini, CROUCHTUNING (Sleeps), AK (Holosight)
			IniWrite, 37, Guns.ini, CROUCHTUNING (Sleeps), AK (4x Scope)

			IniWrite, 65, Guns.ini, CROUCHTUNING (Sleeps), MP5A4 (No Sight)
			IniWrite, 65, Guns.ini, CROUCHTUNING (Sleeps), MP5A4 (Simple Sight)
			IniWrite, 65, Guns.ini, CROUCHTUNING (Sleeps), MP5A4 (Holosight)
			
			IniWrite, 5, Guns.ini, CROUCHTUNING (Sleeps), Thompson (No Sight)
			IniWrite, 5, Guns.ini, CROUCHTUNING (Sleeps), Thompson (Simple Sight)
			IniWrite, 5, Guns.ini, CROUCHTUNING (Sleeps), Thompson (Holosight)

			IniWrite, 5, Guns.ini, CROUCHTUNING (Sleeps), SMG (No Sight)
			IniWrite, 5, Guns.ini, CROUCHTUNING (Sleeps), SMG (Simple Sight)
			IniWrite, 5, Guns.ini, CROUCHTUNING (Sleeps), SMG (Holosight)
			
			IniWrite, 50, Guns.ini, CROUCHTUNING (Sleeps), LR-300 (No Sight)
			IniWrite, 50, Guns.ini, CROUCHTUNING (Sleeps), LR-300 (Simple Sight)
			IniWrite, 50, Guns.ini, CROUCHTUNING (Sleeps), LR-300 (Holosight)
			IniWrite, 34, Guns.ini, CROUCHTUNING (Sleeps), LR-300 (4x Scope)
			
			IniWrite, 29, Guns.ini, CROUCHTUNING (Sleeps), M249 (No Sight)
			IniWrite, 29, Guns.ini, CROUCHTUNING (Sleeps), M249 (Simple Sight)
			IniWrite, 29, Guns.ini, CROUCHTUNING (Sleeps), M249 (Holosight)
			IniWrite, 45, Guns.ini, CROUCHTUNING (Sleeps), M249 (4x Scope)
			FileAppend,`n,Guns.ini
			
;////////////////////////////////Recoil Reduction in Pixles////////////////////////////
			IniWrite, 11, Guns.ini, RECOIL, AK (No Sight) Y
			IniWrite, 8, Guns.ini, RECOIL, AK (Simple Sight) Y
			IniWrite, 10, Guns.ini, RECOIL, AK (Holosight) Y
			IniWrite, 24, Guns.ini, RECOIL, AK (4x Scope) Y
			IniWrite, 0, Guns.ini, RECOIL, AK (No Sight) X
			IniWrite, 0, Guns.ini, RECOIL, AK (Simple Sight) X
			IniWrite, 0, Guns.ini, RECOIL, AK (Holosight) X
			
			IniWrite, 47, Guns.ini, RECOIL, Shitstol (No Sight) Y
			IniWrite, 45, Guns.ini, RECOIL, Shitstol (Simple Sight) Y
			IniWrite, 47, Guns.ini, RECOIL, Shitstol (Holosight) Y
			IniWrite, 0, Guns.ini, RECOIL, Shitstol (No Sight) X
			IniWrite, 0, Guns.ini, RECOIL, Shitstol (Simple Sight) X
			IniWrite, 0, Guns.ini, RECOIL, Shitstol (Holosight) X
			
			IniWrite, 5, Guns.ini, RECOIL, MP5A4 (No Sight) Y
			IniWrite, 4, Guns.ini, RECOIL, MP5A4 (Simple Sight) Y
			IniWrite, 4, Guns.ini, RECOIL, MP5A4 (Holosight) Y
			IniWrite, 0, Guns.ini, RECOIL, MP5A4 (No Sight) X
			IniWrite, 0, Guns.ini, RECOIL, MP5A4 (Simple Sight) X
			IniWrite, 0, Guns.ini, RECOIL, MP5A4 (Holosight) X
			
			IniWrite, 47, Guns.ini, RECOIL, Semi-Automatic Rifle (No Sight) Y
			IniWrite, 38, Guns.ini, RECOIL, Semi-Automatic Rifle (Simple Sight) Y
			IniWrite, 43, Guns.ini, RECOIL, Semi-Automatic Rifle (Holosight) Y
			IniWrite, 175, Guns.ini, RECOIL, Semi-Automatic Rifle (4x Scope) Y
			IniWrite, 0, Guns.ini, RECOIL, Semi-Automatic Rifle (No Sight) X
			IniWrite, 0, Guns.ini, RECOIL, Semi-Automatic Rifle (Simple Sight) X
			IniWrite, 0, Guns.ini, RECOIL, Semi-Automatic Rifle (Holosight) X
			IniWrite, 0, Guns.ini, RECOIL, Semi-Automatic Rifle (4x Scope) X
			
			
			IniWrite, 6, Guns.ini, RECOIL, Thompson (No Sight) Y
			IniWrite, 5, Guns.ini, RECOIL, Thompson (Simple Sight) Y
			IniWrite, 5, Guns.ini, RECOIL, Thompson (Holosight) Y
			IniWrite, 0, Guns.ini, RECOIL, Thompson (No Sight) X
			IniWrite, 0, Guns.ini, RECOIL, Thompson (Simple Sight) X
			IniWrite, 0, Guns.ini, RECOIL, Thompson (Holosight) X
			
			IniWrite, 85, Guns.ini, RECOIL, Python (No Sight) Y
			IniWrite, 82, Guns.ini, RECOIL, Python (Simple Sight) Y
			IniWrite, 88, Guns.ini, RECOIL, Python (Holosight) Y
			IniWrite, 380, Guns.ini, RECOIL, Python (4x Scope) Y
			IniWrite, 0, Guns.ini, RECOIL, Python (No Sight) X
			IniWrite, 0, Guns.ini, RECOIL, Python (Simple Sight) X
			IniWrite, 0, Guns.ini, RECOIL, Python (Holosight) X
			IniWrite, 0, Guns.ini, RECOIL, Python (4x Scope) X
			
			IniWrite, 19, Guns.ini, RECOIL, M92 (No Sight) Y
			IniWrite, 19, Guns.ini, RECOIL, M92 (Simple Sight) Y
			IniWrite, 20, Guns.ini, RECOIL, M92 (Holosight) Y
			IniWrite, 100, Guns.ini, RECOIL, M92 (4x Scope) Y
			IniWrite, 0, Guns.ini, RECOIL, M92 (No Sight) X
			IniWrite, 0, Guns.ini, RECOIL, M92 (Simple Sight) X
			IniWrite, 0, Guns.ini, RECOIL, M92 (Holosight) X
			IniWrite, 0, Guns.ini, RECOIL, M92 (4x Scope) X
			
			
			IniWrite, 5, Guns.ini, RECOIL, SMG (No Sight) Y
			IniWrite, 4, Guns.ini, RECOIL, SMG (Simple Sight) Y
			IniWrite, 5, Guns.ini, RECOIL, SMG (Holosight) Y
			IniWrite, 0, Guns.ini, RECOIL, SMG (No Sight) X
			IniWrite, 0, Guns.ini, RECOIL, SMG (Simple Sight) X
			IniWrite, 0, Guns.ini, RECOIL, SMG (Holosight) X
			
			IniWrite, 6, Guns.ini, RECOIL, LR-300 (No Sight) Y
			IniWrite, 5, Guns.ini, RECOIL, LR-300 (Simple Sight) Y
			IniWrite, 5, Guns.ini, RECOIL, LR-300 (Holosight) Y
			IniWrite, 13, Guns.ini, RECOIL, LR-300 (4x Scope) Y
			IniWrite, 0, Guns.ini, RECOIL, LR-300 (No Sight) X
			IniWrite, 0, Guns.ini, RECOIL, LR-300 (Simple Sight) X
			IniWrite, 0, Guns.ini, RECOIL, LR-300 (Holosight) X
			IniWrite, 0, Guns.ini, RECOIL, LR-300 (4x Scope) X
			
			IniWrite, 10, Guns.ini, RECOIL, M249 (No Sight) Y
			IniWrite, 8, Guns.ini, RECOIL, M249 (Simple Sight) Y
			IniWrite, 9, Guns.ini, RECOIL, M249 (Holosight) Y
			IniWrite, 37, Guns.ini, RECOIL, M249 (4x Scope) Y
			IniWrite, 0, Guns.ini, RECOIL, M249 (No Sight) X
			IniWrite, 0, Guns.ini, RECOIL, M249 (Simple Sight) X
			IniWrite, 0, Guns.ini, RECOIL, M249 (Holosight) X
			IniWrite, 0, Guns.ini, RECOIL, M249 (4x Scope) X
			FileAppend,`n,Guns.ini
			
		;////////////////////////////////////////CROUCH RECOIL////////////////////////////////////////		

			IniWrite, 2, Guns.ini,  CROUCHRECOIL, AK (No Sight) Y
			IniWrite, 4, Guns.ini, CROUCHRECOIL, AK (Simple Sight) Y
			IniWrite, 4, Guns.ini, CROUCHRECOIL, AK (Holosight) Y
			IniWrite, 17, Guns.ini, CROUCHRECOIL, AK (4x Scope) Y
			IniWrite, 0, Guns.ini, CROUCHRECOIL, AK (No Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, AK (Simple Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, AK (Holosight) X
			
			IniWrite, 23, Guns.ini, CROUCHRECOIL, Shitstol (No Sight) Y
			IniWrite, 23, Guns.ini, CROUCHRECOIL, Shitstol (Simple Sight) Y
			IniWrite, 23, Guns.ini, CROUCHRECOIL, Shitstol (Holosight) Y
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Shitstol (No Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Shitstol (Simple Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Shitstol (Holosight) X
			
			IniWrite, 5, Guns.ini, CROUCHRECOIL, MP5A4 (No Sight) Y
			IniWrite, 4, Guns.ini, CROUCHRECOIL, MP5A4 (Simple Sight) Y
			IniWrite, 5, Guns.ini, CROUCHRECOIL, MP5A4 (Holosight) Y
			IniWrite, 0, Guns.ini, CROUCHRECOIL, MP5A4 (No Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, MP5A4 (Simple Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, MP5A4 (Holosight) X
			
			IniWrite, 20, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (No Sight) Y
			IniWrite, 24, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (Simple Sight) Y
			IniWrite, 22, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (Holosight) Y
			IniWrite, 87, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (4x Scope) Y
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (No Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (Simple Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (Holosight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Semi-Automatic Rifle (4x Scope) X
			
			
			IniWrite, 1, Guns.ini, CROUCHRECOIL, Thompson (No Sight) Y
			IniWrite, 1, Guns.ini, CROUCHRECOIL, Thompson (Simple Sight) Y
			IniWrite, 1, Guns.ini, CROUCHRECOIL, Thompson (Holosight) Y
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Thompson (No Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Thompson (Simple Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Thompson (Holosight) X
			
			IniWrite, 48, Guns.ini, CROUCHRECOIL, Python (No Sight) Y
			IniWrite, 54, Guns.ini, CROUCHRECOIL, Python (Simple Sight) Y
			IniWrite, 48, Guns.ini, CROUCHRECOIL, Python (Holosight) Y
			IniWrite, 210, Guns.ini, CROUCHRECOIL, Python (4x Scope) Y
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Python (No Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Python (Simple Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Python (Holosight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, Python (4x Scope) X			
			
			IniWrite, 12, Guns.ini, CROUCHRECOIL, M92 (No Sight) Y
			IniWrite, 10, Guns.ini, CROUCHRECOIL, M92 (Simple Sight) Y
			IniWrite, 12, Guns.ini, CROUCHRECOIL, M92 (Holosight) Y
			IniWrite, 81, Guns.ini, CROUCHRECOIL, M92 (4x Scope) Y
			IniWrite, 0, Guns.ini, CROUCHRECOIL, M92 (No Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, M92 (Simple Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, M92 (Holosight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, M92 (4x Scope) X
			
			IniWrite, 1, Guns.ini, CROUCHRECOIL, SMG (No Sight) Y
			IniWrite, 1, Guns.ini, CROUCHRECOIL, SMG (Simple Sight) Y
			IniWrite, 1, Guns.ini, CROUCHRECOIL, SMG (Holosight) Y
			IniWrite, 0, Guns.ini, CROUCHRECOIL, SMG (No Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, SMG (Simple Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, SMG (Holosight) X
			
			IniWrite, 6, Guns.ini, CROUCHRECOIL, LR-300 (No Sight) Y
			IniWrite, 5, Guns.ini, CROUCHRECOIL, LR-300 (Simple Sight) Y
			IniWrite, 5, Guns.ini, CROUCHRECOIL, LR-300 (Holosight) Y
			IniWrite, 15, Guns.ini, CROUCHRECOIL, LR-300 (4x Scope) Y
			IniWrite, 0, Guns.ini, CROUCHRECOIL, LR-300 (No Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, LR-300 (Simple Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, LR-300 (Holosight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, LR-300 (4x Scope) X
			
			IniWrite, 5, Guns.ini, CROUCHRECOIL, M249 (No Sight) Y
			IniWrite, 4, Guns.ini, CROUCHRECOIL, M249 (Simple Sight) Y
			IniWrite, 5, Guns.ini, CROUCHRECOIL, M249 (Holosight) Y
			IniWrite, 28, Guns.ini, CROUCHRECOIL, M249 (4x Scope) Y
			IniWrite, 0, Guns.ini, CROUCHRECOIL, M249 (No Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, M249 (Simple Sight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, M249 (Holosight) X
			IniWrite, 0, Guns.ini, CROUCHRECOIL, M249 (4x Scope) X
			FileAppend,`n,Guns.ini
				
			IniWrite, 90, Guns.ini, Refractory, M92Refractory
			IniWrite, 70, Guns.ini, Refractory, M92RefractoryMuz
			IniWrite, 165, Guns.ini, Refractory, SARRefractory
			IniWrite, 140, Guns.ini, Refractory, SARRefractoryMuz
			IniWrite, 140, Guns.ini, Refractory, ShitstolRefractory
			FileAppend,`n,Guns.ini
			
			IniWrite, 220, Guns.ini, FireRate, FireRate
			IniWrite, 28, Guns.ini, FireRate, AK (No Sight)
			IniWrite, 11, Guns.ini, FireRate, cAK (No Sight)
			FileAppend,`n,Guns.ini
		}