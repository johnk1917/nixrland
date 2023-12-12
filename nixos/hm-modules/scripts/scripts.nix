{pkgs, ... }: {
# Volume Script
volume = pkgs.writeShellApplication {
   name = "volume";
   runtimeInputs = with pkgs; [pamixer dunst];
   text = ''
# Icon directory 
icon_dir="/etc/nixos/hm-modules/icons/"

# Get Volume
get_volume() {
	volume=$(pamixer --get-volume)
	echo "$volume"
}

# Get icons
get_icon() {
	vol="$(get_volume)"
	current="''${vol%%%}"
	if [[ "$current" -eq "0" ]]; then
		icon=''${icon_dir}'audio-volume-muted-symbolic.svg'
	elif [[ ("$current" -ge "0") && ("$current" -le "30") ]]; then
		icon=''${icon_dir}'audio-volume-low-symbolic.svg'
	elif [[ ("$current" -ge "30") && ("$current" -le "60") ]]; then
		icon=''${icon_dir}'audio-volume-medium-symbolic.svg'
	elif [[ ("$current" -ge "60") && ("$current" -le "90") ]]; then
		icon=''${icon_dir}'audio-volume-high-symbolic.svg'
	elif [[ ("$current" -ge "90") && ("$current" -le "100") ]]; then
		icon=''${icon_dir}'audio-volume-overamplified-symbolic.svg'
	fi
}

# Increase Volume
up_volume() {
	pamixer -i 5 --unmute && get_icon && dunstify -u low --replace=69 -i "$icon" "Volume : $(get_volume)%"
}

# Decrease Volume
down_volume() {
	pamixer -d 5 --unmute && get_icon && dunstify -u low --replace=69 -i "$icon" "Volume : $(get_volume)%"
} 

# Toggle Mute
toggle_mute() {
    status=$(pamixer --get-mute)

	if [[ "$status" == "true" ]]; then
		pamixer --unmute && get_icon && dunstify -u low --replace=69 -i "$icon" "Unmuted"
	else
		pamixer --mute && dunstify -u low --replace=69 -i "''${icon_dir}"'audio-volume-muted-symbolic.svg' "Muted"
	fi
}

# Execute accordingly
if [[ "$1" == "--get" ]]; then
	get_volume
elif [[ "$1" == "--up" ]]; then
	up_volume
elif [[ "$1" == "--down" ]]; then
        down_volume
elif [[ "$1" == "--toggle" ]]; then
	toggle_mute
else
	get_volume
fi
  '';
 };

brightness = pkgs.writeShellApplication {
  name = "brightness";
  runtimeInputs = with pkgs; [brightnessctl light dunst];
  text = ''
## Script To Manage Brightness For Axyl OS.

# Icon directory
icon_dir="/etc/nixos/hm-modules/icons/"

# Graphics card
CARD=$(basename "$(find /sys/class/backlight/* | head -n 1)")

# Get brightness
get_backlight() {
	if [[ "$CARD" == *"intel_"* ]]; then
                BNESS=$(light | sed 's/\.[0-9]*//')
		LIGHT=''${BNESS%.*}
	else
                LIGHT=$(printf '%s' "$(light -G)" | awk 'BEGIN {FS="."}{print $1}')
	fi
	echo "''${LIGHT}%"
}

# Get icons
get_icon() {
	backlight="$(get_backlight)"
	current="''${backlight%%%}"
	if [[ ("$current" -ge "0") && ("$current" -le "20") ]]; then
		icon=''${icon_dir}'display-brightness-off-symbolic.svg'
	elif [[ ("$current" -ge "20") && ("$current" -le "40") ]]; then
		icon=''${icon_dir}'display-brightness-low-symbolic.svg'
	elif [[ ("$current" -ge "40") && ("$current" -le "60") ]]; then
		icon=''${icon_dir}'display-brightness-medium-symbolic.svg'
	elif [[ ("$current" -ge "60") && ("$current" -le "100") ]]; then
		icon=''${icon_dir}'display-brightness-high-symbolic.svg'
	fi
}

# Increase brightness
inc_backlight() {
	if [[ "$CARD" == *"intel_"* ]]; then
		brightnessctl sset 5%+ && get_icon && dunstify -u low --replace=69 -i "$icon" "Brightness : $(get_backlight)"
	else
		light -A 5 && get_icon && dunstify -u low --replace=69 -i "$icon" "Brightness : $(get_backlight)"
	fi
}

# Decrease brightness
dec_backlight() {
	if [[ "$CARD" == *"intel_"* ]]; then
		brightnessctl sset 5%- && get_icon && dunstify -u low --replace=69 -i "$icon" "Brightness : $(get_backlight)"
	else
		light -U 5 && get_icon && dunstify -u low --replace=69 -i "$icon" "Brightness : $(get_backlight)"
	fi
}

# Execute accordingly
if [[ "$1" == "--get" ]]; then
	get_backlight
elif [[ "$1" == "--up" ]]; then
	inc_backlight
elif [[ "$1" == "--down" ]]; then
	dec_backlight
else
	get_backlight
fi
  '';
};

screenshot = pkgs.writeShellApplication {
  name = "screenshot";
  runtimeInputs = with pkgs; [rofi grim slurp];
  text = ''
icon=/etc/nixos/hm-modules/icons/camera-photo-symbolic.svg

op1=" Fullscreen"
op2="󰆟 Selected Area"

ops="''${op1}\n''${op2}"

selected=$(echo -e "$ops" | rofi -dmenu -theme ~/.config/rofi/screenshot/style-1.rasi drun -display-drun -p "Screenshot")

sleep 0.3

if [[ $selected == "$op1" ]]; then
    grim - | wl-copy && dunstify "Screenshot Clipped" -i "$icon"
elif [[ $selected == "$op2" ]]; then
    grim -g "$(slurp)" -| wl-copy && dunstify "Screenshot Clipped" -i "$icon"
fi
  '';
};

library = pkgs.writeShellApplication {
  name = "library";
  runtimeInputs = with pkgs; [zathura rofi];
  text = ''
book_directory="$HOME/Documents/Books/"
selected=$(find "''${book_directory}" -mindepth 1 -printf '%P\n' -iname ".pdf" | rofi -dmenu -theme ~/.config/rofi/pdf-launcher/style-1.rasi drun -display-drun -p " ")

[ -z "$selected" ] && exit

zathura "''${book_directory}""''${selected}"
  '';
};

wallpaper-switch = pkgs.writeShellApplication {
  name = "wallpaper-switch";
  runtimeInputs = with pkgs; [swww];
  text = ''
wallpapers="/etc/nixos/wallpapers/"

list_wallpapers() {
    for file in "$1"/*
    do
        if [[ -f "$file" ]]; then
            echo -en "$(basename "$file")\0icon\x1f$(realpath "$file")\n"
        fi
    done
}

selected_wallpaper="$(list_wallpapers "''${wallpapers}" |  rofi -dmenu -theme ~/.config/rofi/wallpaper-selection/style-1.rasi -p " ")"

icon="''${wallpapers}""''${selected_wallpaper}"

if [[ -f "$selected_wallpaper" ]]; then
    exit 0;
fi

swww img "''${wallpapers}""''${selected_wallpaper}" && dunstify -u low --replace=69 -i "''${icon}" "Wallpaper Changed"
  '';
};

power-menu = pkgs.writeShellApplication {
  name = "powermenu";
  runtimeInputs = with pkgs; [swaylock-effects rofi];
  text = ''
  # Current Theme
dir="$HOME/.config/rofi/powermenu/"
theme='style-1'

# Options
shutdown='⏻ Shutdown'
reboot=' Reboot'
lock='󰌾 Lock'
suspend='󰤄 Suspend'
logout='󰍃 Logout'
yes=' Yes'
no='  No'

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p "Powermenu" \
		-theme "''${dir}"/"''${theme}".rasi
}

# Confirmation CMD
confirm_cmd() {
	rofi -theme-str 'window {location: center; anchor: center; fullscreen: false; width: 250px;}' \
		-theme-str 'mainbox {children: [ "message", "listview" ];}' \
		-theme-str 'listview {columns: 2; lines: 1;}' \
		-theme-str 'element-text {horizontal-align: 0.5;}' \
		-theme-str 'textbox {horizontal-align: 0.5;}' \
		-dmenu \
		-p 'Confirmation' \
		-mesg 'Are you Sure?' \
		-theme "''${dir}"/"''${theme}".rasi
}

# Ask for confirmation
confirm_exit() {
	echo -e "$yes\n$no" | confirm_cmd
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$lock\n$suspend\n$logout\n$reboot\n$shutdown" | rofi_cmd
}

# Execute Command
run_cmd() {
	selected="$(confirm_exit)"
	if [[ "$selected" == "$yes" ]]; then
		if [[ $1 == '--shutdown' ]]; then
			systemctl poweroff
		elif [[ $1 == '--reboot' ]]; then
			systemctl reboot
		elif [[ $1 == '--suspend' ]]; then
		  swaylock 
		elif [[ $1 == '--logout' ]]; then
			if [[ "$DESKTOP_SESSION" == 'openbox' ]]; then
				openbox --exit
			elif [[ "$DESKTOP_SESSION" == 'bspwm' ]]; then
				bspc quit
			elif [[ "$DESKTOP_SESSION" == 'i3' ]]; then
				i3-msg exit
			elif [[ "$DESKTOP_SESSION" == 'plasma' ]]; then
				qdbus org.kde.ksmserver /KSMServer logout 0 0 0
			fi
		fi
	else
		exit 0
	fi
}

# Actions
chosen="$(run_rofi)"
case "''${chosen}" in
    "$shutdown")
		run_cmd --shutdown
        ;;
    "$reboot")
		run_cmd --reboot
        ;;
    "$lock")
		if [[ -x '/usr/bin/betterlockscreen' ]]; then
			betterlockscreen -l
		elif [[ -x '/usr/bin/i3lock' ]]; then
			i3lock
		fi
        ;;
    "$suspend")
		run_cmd --suspend
        ;;
    "$logout")
		run_cmd --logout
        ;;
esac
  '';
};

}
