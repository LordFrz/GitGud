#SingleInstance, Force
#NoEnv
SetBatchLines, -1
SetWorkingDir %A_ScriptDir%

#Include, Gdip.ahk


;-----Gits current reticle values
IniRead, PIC, Settings.ini, SightSelected, CURRENTSIGHT
IniRead, RETCOLOR, Settings.ini, ColorSets, RETICLECOLOR

; Start gdi+
If !pToken := Gdip_Startup()
{
	MsgBox, 48, gdiplus error!, Gdiplus failed to start. Please ensure you have gdiplus on your system
	ExitApp
}

Gui, 1: -Caption +E0x80000 +LastFound +OwnDialogs +Owner +AlwaysOnTop +E0x20  ;to set clickthrough
;Gui, 1: -Caption +E0x80000 +LastFound +OwnDialogs +Owner +AlwaysOnTop
Gui, 1: Show, NA
hwnd := WinExist()


file=%a_Workingdir%\Images\%PIC%  ; Gets the reticle image

;----Checks for the image specified in the settings.ini
pBitmap := Gdip_CreateBitmapFromFile(file)
If !pBitmap
{
	MsgBox, 48, File loading error!, Could not load the image specified
	ExitApp
}

Width := Gdip_GetImageWidth(pBitmap) 
Height := Gdip_GetImageHeight(pBitmap)
hbm := CreateDIBSection(a_screenwidth, a_screenheight)
hdc := CreateCompatibleDC()
obm := SelectObject(hdc, hbm)
G := Gdip_GraphicsFromHDC(hdc)
Gdip_SetInterpolationMode(G, 7)

;Finds the dead center of your screen
xx :=  (A_ScreenWidth //2) - (Gdip_GetImageWidth(pBitmap)/2)
yy :=  (A_ScreenHeight //2) - (Gdip_GetImageHeight(pBitmap)/2)
;Starting values for my loop
Xr:= 0
Yr:= 0


;--------Shitty Random way to switch color---------
;Gdip_DrawImage(G, pBitmap, xx, yy, Width, Height, 0, 0, Width, Height)
;setLoop:= (Width*Height)*10
;Loop,%setLoop%
;{
;		Random,Xr,0,Width-1
;		Random,Yr,0,Height-1
;	if(Gdip_GetPixel(pBitmap, Xr, Yr) != 16777215)
;	{
		;Gdip_SetPixel(pBitmap, Xr, Yr, Gdip_ToARGB(A,0,0,0))
;		Gdip_SetPixel(pBitmap, Xr, Yr, -387530)
;	}
	;Xr++
	;Yr++
	;tmp:= Gdip_GetPixel(pBitmap, 0, 0)
	;MsgBox, %tmp%
;	Gdip_DrawImage(G, pBitmap, xx, yy, Width, Height, 0, 0, Width, Height)
;}

;Set Transparency color to the pixles color at 0,0
TranColor:= Gdip_GetPixel(pBitmap, 0, 0)
;16777215 - Photoshop Transparecy

;--------Smooth Slick koolkid way to switch the color----------
Loop, %Height%
{
	Loop, %Width%
	{
		;------------------------Check if current pixel is clear---------------
		if(Gdip_GetPixel(pBitmap, Xr, Yr) != TranColor)
		{
			;--------------------Changes pixel color and updates on screen image---------
			Gdip_SetPixel(pBitmap, Xr, Yr, RETCOLOR)
			Gdip_DrawImage(G, pBitmap, xx, yy, Width, Height, 0, 0, Width, Height)
		}
		Yr++
	}
	Xr++
	Yr = 0
}

UpdateLayeredWindow(hwnd, hdc, 0, 0, a_screenwidth, a_screenheight)



SelectObject(hdc, obm)
DeleteObject(hbm)
DeleteDC(hdc)
Gdip_DeleteGraphics(G)
Gdip_DisposeImage(pBitmap)

;OnMessage(0x201, "WM_LBUTTONDOWN")  ;to move the gui with mouse




ExitScript("RUN ME.ahk")


Return
;Checks is main Script running, if not closes
ExitScript(Name)
{
	Loop
	{
		DetectHiddenWindows On
		SetTitleMatchMode RegEx
		IfWinExist, i)%Name%.* ahk_class AutoHotkey
			{
			
			}
		else
			ExitApp
			
		Sleep, 5000
	}
}






WM_LBUTTONDOWN()
{
	PostMessage, 0xA1, 2
}

Return
