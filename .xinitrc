xrdb -load ~/.Xresources &
setxkbmap -layout us,ru -option grp:caps_toggle &
# заменить клавишу меню на правый контрол
xkbcomp $DISPLAY - | sed 's/<COMP> = 135;/<COMP> = 105;/; s/<RCTL> = 105;/<RCTL> = 135;/' | xkbcomp - $DISPLAY
exec openbox-session

