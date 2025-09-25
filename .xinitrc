setkbd()
{
	setxkbmap -layout us,ru -option grp:caps_toggle
	xkbcomp $DISPLAY - | sed '/<COMP> = 135;/d; s/<RCTL> = 105;/<RCTL> = 135;/' | xkbcomp - $DISPLAY
}

xrdb -load .Xresources &
setkbd &
exec openbox-session
