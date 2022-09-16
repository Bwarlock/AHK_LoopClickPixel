CoordMode, Mouse, Screen


!n::
FileAppend, CoordMode`, Mouse`, Screen`n , Script.ahk
return

!c::
MouseGetPos, xpos, ypos
FileAppend, Click %xpos% %ypos%`n , Script.ahk
return

!s::
FileAppend, Sleep 1000`n , Script.ahk
return

!p::
MouseGetPos, xx, yy
Sleep 4000
PixelGetColor, color, xx, yy
FileAppend, `nPixelGetColor`, color`, %xx%`, %yy%`n`;%color%`n`n , Script.ahk
return

!i::
FileAppend, if (checkColor = %color%)`n{`n, Script.ahk
return

!l::
FileAppend, Loop`n{`n, Script.ahk
return

!o::
FileAppend, }`n, Script.ahk
return

!d::
MouseGetPos, xpos, ypos
FileAppend, MouseClickDrag`, Left`, %xpos%`, %ypos%`, , Script.ahk
return

!f::
MouseGetPos, xpos, ypos
FileAppend, %xpos%`, %ypos%`, 10 , Script.ahk
return

Esc::
ExitApp