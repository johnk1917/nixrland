{config, pkgs, ... }: {
  xdg.configFile."/home/john1917/.config/home-manager/modules/hyprland/Scripts/autostart" = {
    executable = true;
    text = ''
#!/bin/sh 

# Start Wallpaper
swww init
swww img $HOME/.config/home-manager/hyprland/Wallpapers/shinobu_night.png &

# Start dunst
dunst &

# Start foot server 
foot --server &

# Start Spotifyd
spotifyd &

# Start waybar
waybar
  '';
  };

  xdg.configFile."/home/john1917/.config/home-manager/modules/hyprland/Scripts/brightness" = {
    executable = true;
    text = ''
#!/usr/bin/env bash

## Script To Manage Brightness For Axyl OS.

# Icon directory
icon_dir="$HOME/.config/home-manager/modules/hyprland/icons/"

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
fi'';
  };

  xdg.configFile."/home/john1917/.config/home-manager/modules/hyprland/Scripts/pdf-launcher" = {
    executable = true;
    text = ''
#!/bin/sh

book_directory="$HOME/Documents/Books/"
selected=$(ls -r "''${book_directory}" | grep -E "*pdf$" | rofi -dmenu -theme ~/.config/rofi/pdf-launcher/style-1.rasi drun -display-drun -p " ")

[ -z "$selected" ] && exit

zathura ''${book_directory}"''${selected}"
  '';
  };
  
  xdg.configFile."/home/john1917/.config/home-manager/modules/hyprland/Scripts/screenshot" = {
    executable = true;
    text = ''
#!/bin/sh

icon=$HOME/.config/home-manager/modules/hyprland/icons/camera-photo-symbolic.svg

op1="Fullscreen"
op2="Selected Area"

ops="''${op1}\n''${op2}"

selected=$(echo -e $ops | rofi -dmenu -theme ~/.config/rofi/screenshot/style-1.rasi drun -display-drun -p "Screenshot")

sleep 0.3

if [[ $selected == $op1 ]]; then
    IMG=/tmp/$(date | sed "s/\s/-/g" | sed "s/--/-/g").png && grim $IMG && cat $IMG | wl-copy && rm -rf $IMG && dunstify "Screenshot Clipped" -i $icon
elif [[ $selected == $op2 ]]; then
    grim -g "$(slurp)" -| wl-copy && dunstify "Screenshot Clipped" -i $icon
fi
  '';
  };

  xdg.configFile."/home/john1917/.config/home-manager/modules/hyprland/Scripts/volume" = {
    executable = true;
    text = ''
#!/bin/sh

## Script To Manage Speaker Volume For Axyl OS.

# Icon directory 
icon_dir="$HOME/.config/home-manager/modules/hyprland/icons/"

# Get Volume
get_volume() {
	volume=$(echo $(pamixer --get-volume))
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
		pamixer --mute && dunstify -u low --replace=69 -i ''${icon_dir}'audio-volume-muted-symbolic.svg' "Muted"
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

  xdg.configFile."/home/john1917/.config/home-manager/modules/hyprland/Scripts/wallpaper-switch" = {
    executable = true;
    text = ''
#!/usr/bin/env bash
#
wallpapers="$HOME/.config/home-manager/modules/hyprland/Wallpapers/"

list_wallpapers() {
    for file in "$1"/*
    do
        if [[ -f "$file" ]]; then
            echo -en "$(basename "$file")\0icon\x1f$(realpath "$file")\n"
        fi
    done
}

selected_wallpaper="$(list_wallpapers ''${wallpapers} |  rofi -dmenu -theme ~/.config/rofi/wallpaper-selection/style-1.rasi -p " ")"

if [[ -f "$selected_wallpaper" ]]; then
    exit 0;
fi

swww img ''${wallpapers}"''${selected_wallpaper}"
  '';
  };

  xdg.configFile."/home/john1917/.config/home-manager/modules/hyprland/Scripts/wifi-menu" = {
    executable = true;
    text = ''
#!/bin/sh 
bssid=$(nmcli dev wifi list | sed -n '1!p' | cut -b 9- | rofi -dmenu -theme ~/.config/rofi/wifi-menu/style-1.rasi -p " " | cut -d' ' -f1)

[ -z "$bssid" ] && exit

password=$(echo "" | rofi -dmenu -theme ~/.config/rofi/wifi-menu/wifi-password.rasi -p " " )

wifi_network=$(nmcli -t -f active,ssid dev wifi | egrep '^yes' | cut -d\' -f2 | sed 's/^[^:]*://')
icon=$HOME/.config/home-manager/modules/hyprland/icons/wifi-icon.png
iconE=$HOME/.config/home-manager/modules/hyprland/icons/error-warning.png

[ -z "$password" ] && exit

# Notify the status
notify_connect() {
  status=$(echo $?)

  if [[ "$status" == '0' ]]; then
    dunstify -u low --replace=69 -i "$icon" "Connected to Network: $wifi_network"
  elif [[ "$status" -gt 0 ]]; then 
    dunstify -u low --replace=69 -i "$iconE" "Unable to Connect: Incorrect Passphrase"
  fi
}

# Connect to the Wifi & Display status 
nmcli device wifi connect $bssid password $password ; notify_connect
  '';
  };
}
