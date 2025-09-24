; functions to be called

ReloadThisScript(){ ; in use
;~ Send, ^s
MsgBox, , App, Reloaded!, 1
Reload
}

toggleclick := 0
ToggleClick(){ ; in use
    global toggleclick
    toggleclick := !toggleclick

    if (toggleclick) {
        Send, {LButton down}
    } else {
        Send, {LButton up}
    }
}

sometoggles := 0
SomeToggles(){
	global sometoggles
	sometoggles++

	if (sometoggles > 3){
		sometoggles := 1
	}
	if (sometoggles = 1){
		Send, a
	}
	else if (sometoggles = 2){
		Send, b
	}
	else if (sometoggles = 3){
		Send, c
	}
}

CreateHeadersInScripts(){
Send, {;}
Send, {* 37}
Send, {Space}
Send, {* 37}
Send, ^{Left}
Send, {Space}
Send, {Left}
}

DeletingLine(){
Send, {Home}
SendInput, +{End}
SendInput, {Delete 2}
}

togglecontrol := 0
ToggleControl(){ ; in use
    global togglecontrol
    togglecontrol := !togglecontrol

    if (togglecontrol) {
		MsgBox, , , "Control active", 0.2
        Send, {Control down}
    } else {
		MsgBox, , , "Control deactive", 0.2
        Send, {Control up}
    }
}

HideThings(){ ; in use
	WinHide, ahk_class MagUIClass ; Magnifier
	WinHide, ahk_exe oCam.exe ; Ocam
	WinClose, ahk_exe Mechvibes.exe

}

ShowOcam(){
	WinShow, ahk_exe oCam.exe
}

GetFavoritesSitesFromBookMarkerSideBar() {
	Click, Right
	Sleep, 500
	Send, {Down 5}
	Send, {Tab}
	Sleep, 500
	Send, {Enter}
	Sleep, 500
	Send, {tab}
	Send, ^a
	Send, ^c
	Sleep, 500
	WinActivate, ahk_exe Obsidian.exe
	Sleep, 500
	Send, ^v
	Send, {Enter}
}

UdemyEnglishPhoto() {
	Click
	Sleep, 100
	Send, ^v
	Sleep, 800
	MouseClick, left, 887, 69, 1, 50
	Sleep, 800
	MouseClick, left, 1277, 118, 1, 50
	Sleep, 100
	Send, 2.23
	Sleep, 100
	Send, {Enter}
	Sleep, 100
}
