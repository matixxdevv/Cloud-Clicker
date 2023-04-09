; ------------------
; ------------------
; https://imgur.com/a/N21j52d
; ------------------
; ------------------

#NoEnv
SetBatchLines, -1
isMouseShown()	

OnMessage(0x20, "WM_SETCURSOR")
OnMessage(0x200, "WM_MOUSEMOVE")
OnMessage(0x201, "WM_LBUTTONDOWN")
OnMessage(0x202, "WM_LBUTTONUP")


FileCreateDir, %A_AppData%/Cloud_Clicker
FileCreateDir, %A_AppData%/Cloud_Clicker/assets
FileCreateDir, %A_AppData%/Cloud_Clicker/assets/biale
;zmienne obrazki biale
mieczbiale= %A_AppData%/Cloud_Clicker/assets/biale/mieczbiale.png
myszkabiale= %A_AppData%/Cloud_Clicker/assets/biale/myszkabiale.png
savebuttonbiale= %A_AppData%/Cloud_Clicker/assets/biale/savebiale.png
ustawieniabiale= %A_AppData%/Cloud_Clicker/assets/biale/ustawieniabiale.png
kilofbiale= %A_AppData%/Cloud_Clicker/assets/biale/kilofbiale.png
czlowiekbiale= %A_AppData%/Cloud_Clicker/assets/biale/userbiale.png
;zmienne obrazki szare
miecz= %A_AppData%/Cloud_Clicker/assets/miecz.png
myszka= %A_AppData%/Cloud_Clicker/assets/myszka.png
savebutton= %A_AppData%/Cloud_Clicker/assets/save.png
ustawienia= %A_AppData%/Cloud_Clicker/assets/ustawienia.png
kilof= %A_AppData%/Cloud_Clicker/assets/kilof.png
czlowiek= %A_AppData%/Cloud_Clicker/assets/user.png
pasekboczny= %A_AppData%/Cloud_Clicker/assets/pasekboczny.png
;------------------------------------------------------------------------------
;urldownload szare
UrlDownloadToFile, https://i.imgur.com/1clcT93.png, %kilof%
UrlDownloadToFile, https://i.imgur.com/HPr2sp6.png, %miecz%
UrlDownloadToFile, https://i.imgur.com/tT044MX.png, %myszka%
UrlDownloadToFile, https://i.imgur.com/DgxyPyi.png, %savebutton%
UrlDownloadToFile, https://i.imgur.com/dUNQdg8.png, %czlowiek%
UrlDownloadToFile, https://i.imgur.com/n6acu5B.png, %ustawienia%
UrlDownloadToFile, https://i.imgur.com/Rhhft2X.png, %pasekboczny%
;urldownload biale
UrlDownloadToFile, https://i.imgur.com/oKmcUkr.png, %kilofbiale%
UrlDownloadToFile, https://i.imgur.com/asvLWXL.png, %mieczbiale%
UrlDownloadToFile, https://i.imgur.com/YtPTrKv.png, %myszkabiale%
UrlDownloadToFile, https://i.imgur.com/ABYGKr9.png, %savebuttonbiale%
UrlDownloadToFile, https://i.imgur.com/fHdEc6I.png, %czlowiekbiale%
UrlDownloadToFile, https://i.imgur.com/THI1XSx.png, %ustawieniabiale%

title :="Cloud Clicker"

Gui, Add, Tab2,buttons w100 vTAB_BUTTON x-100, start|a|b|c|d|e|f
Gui, +Hwndgui_id -Caption -MaximizeBox +E0x02000000 +E0x00080000 
; koniec bez paska na chwile
Gui, Color, 060606, 121212

; taby

; a

gui, tab, start
Gui, Font, c00FF0C s10 Bold, Segoe UI
gui, add, text, c00FF0C gClose w65 h65 x670 y10, x
gui, add, text, c00FF0C gmin w65 h65 x650 y10, -
gui, add, text , c00FF0C gNazwaClickera x10 y12, Cloud Clicker
Gui, add, picture, gtb4 x22 y285 w64 h64 c00FF0C BackgroundTrans ,%ustawienia%
Gui, add, picture, gtb3 x22 y210 w64 h64 c00FF0C BackgroundTrans ,%kilof%
Gui, add, picture, gtb2 x22 y135 w64 h64 c00FF0C BackgroundTrans ,%miecz%
Gui, add, picture, gtb1 x22 y60 w64 h64 c00FF0C BackgroundTrans ,%myszka%
gui, add, text, x350 y115 c00FF0C, Witaj %A_UserName%!
gui, add, text, x245 y150 c00FF0C, Cieszymy sie, ze wybrales naszego clickera
gui, add, text, x265 y300 c00FF0C, Konto Administratora: Matixx#8760
gui, add, text, x300 y330 c00FF0C, Clickera uzywa: 3 osoby.

gui, tab, a
Gui, Font, c00FF0C s10 Bold, Segoe UI
gui, add, text, c00FF0C gClose w65 h65 x670 y10, x
gui, add, text, c00FF0C gmin w65 h65 x650 y10, -
gui, add, text , c00FF0C gNazwaClickera x10 y12, Cloud Clicker
Gui, add, picture, gSave x638 y345 w55 h55 c00FF0C BackgroundTrans ,%savebutton%
Gui, add, picture, gtb4 x22 y285 w64 h64 c00FF0C BackgroundTrans ,%ustawienia%
Gui, add, picture, gtb3 x22 y210 w64 h64 c00FF0C BackgroundTrans ,%kilof%
Gui, add, picture, gtb2 x22 y135 w64 h64 c00FF0C BackgroundTrans ,%miecz%
Gui, add, picture, gtb1 x22 y60 w64 h64 c00FF0C BackgroundTrans ,%myszkabiale%
;lpm
gui, add, text, x190 y90, LPM
gui, add, text, x140 y140, BIND:
gui, add, text, x140 y190, CPS:
Gui, add, edit, vcpslpm x175 y190 w19 h20 BackgroundTrans -E0x200,
Gui, add, edit, vlpm x185 y140 w19 h20 BackgroundTrans -E0x200,
;ppm
gui, add, text, x500 y90, PPM
gui, add, text, x450 y140, BIND:
gui, add, text, x450 y190, CPS:
Gui, add, edit, vcpsppm x485 y190 w19 h20 BackgroundTrans -E0x200,
Gui, add, edit, vppm x495 y140 w19 h20 BackgroundTrans -E0x200,


; b

gui, tab, b
Gui, Font, c00FF0C s10 Bold, Segoe UI
gui, add, text, c00FF0C gClose w65 h65 x670 y10, x
gui, add, text, c00FF0C gmin w65 h65 x650 y10, -
gui, add, text , c00FF0C gNazwaClickera x10 y12, Cloud Clicker
Gui, add, picture, gtb4 x22 y285 w64 h64 c00FF0C BackgroundTrans ,%ustawienia%
Gui, add, picture, gtb3 x22 y210 w64 h64 c00FF0C BackgroundTrans ,%kilof%
Gui, add, picture, gtb2 x22 y135 w64 h64 c00FF0C BackgroundTrans ,%mieczbiale%
Gui, add, picture, gtb1 x22 y60 w64 h64 c00FF0C BackgroundTrans ,%myszka%

; c

gui, tab, c
gui, add, text, c00FF0C gClose w65 h65 x670 y10, x
gui, add, text, c00FF0C gmin w65 h65 x650 y10, -
gui, add, text , c00FF0C gNazwaClickera x10 y12, Cloud Clicker
Gui, add, picture, gtb4 x22 y285 w64 h64 c00FF0C BackgroundTrans ,%ustawienia%
Gui, add, picture, gtb3 x22 y210 w64 h64 c00FF0C BackgroundTrans ,%kilofbiale%
Gui, add, picture, gtb2 x22 y135 w64 h64 c00FF0C BackgroundTrans ,%miecz%
Gui, add, picture, gtb1 x22 y60 w64 h64 c00FF0C BackgroundTrans ,%myszka%

; d

gui, tab, d
gui, add, text, c00FF0C gClose w65 h65 x670 y10, x
gui, add, text, c00FF0C gmin w65 h65 x650 y10, -
gui, add, text , c00FF0C gNazwaClickera x10 y12, Cloud Clicker
Gui, add, picture, gtb4 x22 y285 w64 h64 c00FF0C BackgroundTrans ,%ustawieniabiale%
Gui, add, picture, gtb3 x22 y210 w64 h64 c00FF0C BackgroundTrans ,%kilof%
Gui, add, picture, gtb2 x22 y135 w64 h64 c00FF0C BackgroundTrans ,%miecz%
Gui, add, picture, gtb1 x22 y60 w64 h64 c00FF0C BackgroundTrans ,%myszka%

gui, show, w700 h400, %title%

WinGet, window_, List
Loop, %window_% {
    WinGetTitle,title,% "ahk_id" window_%A_Index%
    if (title)
    list.=title "|"
}


return
Save:
Gui, Submit, NoHide
Hotkey, ~%lpm%, lpm
Hotkey, ~%ppm%, ppm
GuiControl, Choose, TAB_BUTTON, 5
gui, tab, e
gui, add, text , c00FF0C gNazwaClickera x330 y12, Cloud Clicker
Gui, add, text, gZapisywanieText x325 y150, ZAPISYWANIE...
sleep 1500
GuiControl, Choose, TAB_BUTTON, 6
gui, tab, f
gui, add, text , c00FF0C gNazwaClickera x330 y12, Cloud Clicker
Gui, add, text, gZapisanoText x335 y150, ZAPISANO!
sleep 1500
GuiControl, Choose, TAB_BUTTON, 1

cpslpmt := 3
cpslpmt := cpslpmt / cpslpm
cpsppmt := 3
cpsppmt := cpsppmt / cpsppm
return

ZapisanoText:
{

}

Return

ZapisywanieText:
{

}
return



lpm:
Toggle := !Toggle
While Toggle{
Click
sleep cpslpmt
}


return

ppm:
Toggle := !Toggle
While Toggle{
Click, Right
sleep cpsppmt
}

return

; SETTINGS ===============================================================================================================

#NoEnv
#SingleInstance Force
SetBatchLines -1

global ClrFailure := "FF0033|FF0033"
global ClrWarning := "FFFF66|FFFF66"
global ClrOk      := "00CC33|00CC33"
global GuiW       := 800
global GuiH       := 400

; GUI ===========================================================================================================================

Gui, +LastFound +hwndhMyGUI

Gui, Add, Pic, % "xm ym+" GuiH-4 " w" GuiW " h200 0x4E hwndHPIC1"
CreateDIB(HPIC1, ClrOk, 1, 1, 5, 5)
Gui,2: Add, Pic, % "xm ym+" GuiH-4 " w" GuiW " h200 0x4E hwndHPIC1"
CreateDIB(HPIC1, ClrOk, 1, 1, 5, 5)

return

isMouseShown()			; Suspends the script when mouse is visible ie: inventory, menu, map.
	{
		StructSize := A_PtrSize + 16
		VarSetCapacity(InfoStruct, StructSize)
		NumPut(StructSize, InfoStruct)
		DllCall("GetCursorInfo", UInt, &InfoStruct)
		Result := NumGet(InfoStruct, 8)

	if Result > 1
     		 Return 1
	else
      		Return 0
	}
	Loop
	{
		if isMouseShown() == 1
			Suspend On
		else
			Suspend Off
		Sleep 1
	}
    return
;IONS =====================================================================================================================

CreateDIB(hWnd, PixelData, W, H, ResizeW := 0, ResizeH := 0, Gradient := 1) ; by SKAN | modified by jNizM
{
    WB := Ceil((W * 3) / 2) * 2, VarSetCapacity(BMBITS, WB * H + 1, 0), P := &BMBITS
    loop, parse, PixelData, |
        P := Numput("0x" A_LoopField, P+0, 0, "uint") - (W & 1 && Mod(A_Index * 3, W * 3) = 0 ? 0 : 1)

    hBitmap := DllCall("gdi32.dll\CreateBitmap", "int", W, "int", H, "uint", 1, "uint", 24, "ptr", 0, "ptr")
    hBM := DllCall("user32.dll\CopyImage", "ptr", hBitmap, "uint", 0, "int", 0, "int", 0, "uint", 0x2008, "ptr")
    DllCall("gdi32.dll\SetBitmapBits", "ptr", hBM, "uint", WB * H, "ptr", &BMBITS)

    if !(Gradient+0)
        hBM := DllCall("user32.dll\CopyImage", "ptr", hBM, "uint", 0, "int", 0, "int", 0, "uint", 0x0008, "ptr")
    hBM := DllCall("user32.dll\CopyImage", "ptr", hBM, "int", 0, "int", ResizeW, "int", ResizeH, "int", 0x200C, "ptr")

    DllCall("user32.dll\SendMessage", "ptr", hWnd, "uint", 0x0172, "ptr", 0, "ptr", hBM, "ptr")
    return True, DllCall("gdi32.dll\DeleteObject", "ptr", hBitmap)
}


NazwaClickera:
{

}

Return

tb1:
GuiControl, Choose, TAB_BUTTON, 1
return
tb2:
GuiControl, Choose, TAB_BUTTON, 2
return
tb3:
GuiControl, Choose, TAB_BUTTON, 3
return
tb4:
GuiControl, Choose, TAB_BUTTON, 4
return



; Resizes the edit control and titlebar div, moves the 
; minimize & close buttons to the right of the GUI
;
; Set to Critical to prevent an issue where sometimes
; part of the window can disappear if it sets the window
; region before all the controls are able to be drawn
; but it might slow things down if you're using a lot
; of controls with AutoXYWH() for instance.
GuiSize:
    Critical
    If ErrorLevel = 1
        Return
    WinGetPos, , , winW, winH, % "ahk_id" gui_id
    Guicontrol, Move, titlebarDiv, % "w" winW           ; <---- to jest kod od przesuwania 
    WinSet, Region , % "0-0 R15-15 w" winW " h" winH
Return

WM_LBUTTONDOWN() {

    global isResizing, resizeBorder
    WinGetPos, winX, winY, winW, winH, % "ahk_id" gui_id
    MouseGetPos, mouseX, mouseY

    ; Capture mouse if cursor is over the resize area
    If (!isResizing && resizeBorder) {
        isResizing := 1
        DllCall("SetCapture", "UInt", gui_id)
    }

    If ( A_Gui && mouseY < 29 ) ; move window from titlebar area while menus are hidden
        PostMessage, 0xA1, 2 ; 0xA1 = WM_NCLBUTTONDOWN

    If (A_GuiControl = "minimizeBtn1") ; Minimize whent the 'button' is clicked
        WinMinimize, % "ahk_id" gui_id
    If (A_GuiControl = "minimizeBtn2") ; Minimize whent the 'button' is clicked
        WinMinimize, % "ahk_id" gui_id

}

WM_MOUSEMOVE() {

    global resizeBorder, isResizing
    WinGetPos, winX, winY, winWidth, winHeight, % "ahk_id" gui_id
    CoordMode, Mouse, Screen
    MouseGetPos, mouseX, mouseY
    minWidth        := 200
    , minHeight     := 150

    If isResizing {

        winSYPos := winY + winHeight
        winEXPos := winX + winWidth

        If InStr(resizeBorder, "W") {
            newWidth := winEXPos - mouseX
            If (newWidth > minWidth && mouseX > 0)
                SetWindowPosition(gui_id,mouseX,,newWidth)
        } Else If InStr(resizeBorder, "E") {
            newWidth := mouseX - winX
            If (newWidth > minWidth)
                SetWindowPosition(gui_id,,,newWidth)
        }

        If InStr(resizeBorder, "N") {
            newHeight := winSYPos - mouseY
            If (newHeight > minHeight && mouseY > 0)
                SetWindowPosition(gui_id,,mouseY,,newHeight)
        } Else If InStr(resizeBorder, "S") {
            newHeight := mouseY - winY
            If (newHeight > minHeight)
                SetWindowPosition(gui_id,,,,newHeight)
        }
        
    }
}

SetWindowPosition(hwnd, x := "", y := "", w := "", h := "") {
    WinGetPos, winX, winY, winW, winH, % "ahk_id" hwnd
    x := x ? x : winX   ; Set vars to found positions if params are blank
    , y := y ? y : winY
    , w := w ? w : winW
    , h := h ? h : winH
    DllCall("SetWindowPos","uint",hwnd,"uint",0
    ,"int",x,"int",y,"int",w,"int",h
    ,"uint",0x40)
    ToolTip, % "x" x " y" y " w" w " h" h
}


min:
WinMinimize
Return

GuiClose:
ExitApp
return
Close:
ExitApp
return
