options=" 󰒲  Suspend\n 󰍃  Logout\n 󰜉  Reboot\n 󰐥  Shutdown"
selected=$(echo -e "$options" | rofi -dmenu -p "" -l 4 -theme "$HOME"/.config/rofi/configpowermenu.rasi )

case "$selected" in
    " 󰐥  Shutdown")
        shutdown now
        ;;
    " 󰍃  Logout")
        hyprctl dispatch exit
        ;;
    " 󰜉  Reboot")
        reboot
        ;;
    " 󰒲  Suspend")
        systemctl suspend
        ;;
    *)
        echo "Opción no válida"
        ;;
esac