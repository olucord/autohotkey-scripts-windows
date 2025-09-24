; Hotkeys

'::Click, 2
1::LButton
2::^!Tab
;~ 2::#Tab
LAlt::RButton
z::MButton
LWin::Enter
\::z
3::Delete

6::_
7::\
8::Send, {NumpadSub}
9::Send, {NumpadDiv}

-::
Suspend
Send, {F2}
Suspend
return

F1::SendInput, ^c
F2::ToggleClick()
F3::Send, ^{LButton}
F4::Send, !{LButton}

F14::SendInput, ^v
*F16::ToggleControl()
F17::SendInput, ^q
;~ F18::Run, G:\My Drive\AHK\AHK V1\Active\Alias.ahk
F20::SendInput, ^s
F23::Run, G:\My Drive\AHK\AHK V1\Active\CallFunctionsAndScripts.ahk
F24::SendInput, ^x

;Enter::
Esc::Esc
RControl::HideThings()
RShift::Run, explorer ms-clock:
AppsKey::CapsLock
[::Home
]::End

;************************************* Additions (&) *************************************

0::|
2 & F1::Backspace
;~ 2 & Esc::#Tab
9 & 1::!
9 & 2::@
9 & 3::#
9 & 4::$
9 & 7::&

F14 & q::Send, !{Left}
F14 & w::Send, !{Right}
F14 & a::Send, ^{PgUp}
F14 & s::Send, ^{PgDn}
F14 & e::Send, {Volume_Up}
F14 & d::Send, {Volume_Down}
F14 & r::Send, {Volume_Mute}
F14 & c::Send, ^w
F14 & x::Send, #v
F14 & p::Send, #p

F16 & 1::Send, #{NumpadAdd}
F16 & 2::Send, #{NumpadSub}

F23 & 1::Send, {WheelLeft}
F23 & 2::Send, {WheelRight}
F23 & F2::Send, ^{;}
F23 & e::Send, !{Up}
F23 & d::Send, !{Down}
F23 & F1::
Send, ^s
Sleep, 100
Send, ^!{n}
return

F23 & '::
Click, 2
Sleep, 100
SendInput, ^c
return

F23 & 3::
Click, 2
Sleep, 100
SendInput, ^v
return

F23 & Esc::Send, ^j
F23 & Tab::Send, ^!o

;~ F24 & F1::
F24 & 1::Send, ^#{Left}
F24 & 2::Send, ^#{Right}
F24 & Esc::Send, !{F4}

Enter & q::SendRaw, (
Enter & w::SendRaw, )
Enter & a::SendRaw, [
Enter & s::SendRaw, ]
Enter & d::SendRaw, {
Enter & f::SendRaw, }
Enter & x::SendRaw, •
Enter & c::SendRaw, –
Enter & v::
Send, {Space}
Send, {NumpadSub}
SendRaw, >
Send, {Space}
return
Enter & e::
Send, ^!Enter
;~ Send, ^s
;~ Send, ^!n
return
Enter & r::Send, !Delete
;~ Enter & RShift::SendRaw, .
;~ Enter & [::SendRaw, ´
Enter & 1::
Suspend
Send, '
Suspend
return
Enter & 2::Send, "

Enter & Backspace::Send, {Left}
Enter & Space::Send, {Right}
Enter & RControl::Send, {Enter}

Esc & F1::!Tab
Esc & F2::#d






