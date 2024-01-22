{config, pkgs, ...}: {
  xdg.configFile."/home/john1917/.config/rofi/colors/tokyonight.rasi".text = ''
  /**
  *
   * Author : Levi Lacoss (fishyfishfish55)
   * Github : @fishyfishfish55
   *
   * Colors
   **/

  * {
      background:     #1A1B26FF;
      background-alt: #1A1B26FF;
      foreground:     #C0CAF5FF;
      selected:       #7AA2F7FF;
      active:         #414868FF;
      urgent:         #F7768EFF;
  }
  '';

  xdg.configFile."/home/john1917/.config/rofi/colors/catppuccin-mocha.rasi".text = ''
  /**
  *
   * Author : Levi Lacoss (fishyfishfish55)
   * Github : @fishyfishfish55
   *
   * Colors
   **/

  * {
      background:     #181825FF;
      background-alt: #181825FF;
      foreground:     #CDD6F4FF;
      selected:       #89B4FAFF;
      active:         #45475AFF;
      urgent:         #F38BA8FF;
  }
  '';

  xdg.configFile."/home/john1917/.config/rofi/colors/kanagawa.rasi".text = ''
  * {
      background:     #1F1F28FF;
      background-alt: #1F1F28FF;
      foreground: #DCDFBAFF;
      selected: #7aa89fFF;
      active: #25252FFF;
      urgent: #C34043FF;
  }
  '';

  xdg.configFile."/home/john1917/.config/rofi/colors/oxocarbon.rasi".text = ''
  * {
      background: #161616FF;
      background-alt: #161616FF;
      foreground: #F2F4F8FF;
      selected: #3DDBD9FF;
      active: #262626FF;
      urgent: #EE5396FF;
  }
  '';

  xdg.configFile."/home/john1917/.config/rofi/colors/decayce.rasi".text = ''
  * {
      background: #0d0f18FF;
      background-alt: #0d0f18FF;
      foreground: #a5b6cfFF;
      selected: #8baff1FF;
      active: #121521FF;
      urgent: #e26c7cFF; 
  }
  '';

  xdg.configFile."/home/john1917/.config/rofi/colors/gruvbox.rasi".text = ''
  *{
      background: #1D2021FF;
      background-alt: #1D2021FF;
      foreground: #EBDBB2FF;
      active: #282828FF;
      selected: #8EC07CFF;
      urgent: #CC241DFF;
  }
  '';

  xdg.configFile."/home/john1917/.config/rofi/colors/everblush.rasi".text = ''
  *{
      background: #141B1EFF;
      background-alt: #141B1EFF;
      foreground: #DADADAFF;
      active: #232A2DFF;
      selected: #67CBE7FF;
      urgent: #E57474FF;
  }
  '';

  xdg.configFile."/home/john1917/.config/rofi/launchers/type-1/launcher.sh" = {
    executable = true;
    text = ''
    #!/usr/bin/env bash
#

    dir="$HOME/.config/rofi/launchers/type-1"
    theme='style-1'

    rofi \
      -show drun \
      -theme ''${dir}/''${theme}.rasi
    '';
  };

  xdg.configFile."/home/john1917/.config/rofi/launchers/type-1/shared/fonts.rasi".text = ''
  /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Fonts
 *
 **/

* {
    font: "JetBrains Mono Nerd Font 10";
}
'';

xdg.configFile."/home/john1917/.config/rofi/launchers/type-1/shared/colors.rasi".text = '' 
/**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Colors
 *
 * Available Colors Schemes
 *
 * adapta    catppuccin    everforest    navy       paper
 * arc       cyberpunk     gruvbox       nord       solarized
 * black     dracula       lovelace      onedark    yousai
 *
 **/

/* Import color-scheme from `colors` directory */

@import "~/.config/rofi/colors/everblush.rasi"
'';

  xdg.configFile."/home/john1917/.config/rofi/launchers/type-1/style-1.rasi".text = ''
  /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Rofi Theme File
 * Rofi Version: 1.7.3
 **/

/*****----- Configuration -----*****/
configuration {
	modi:                       "drun,run,filebrowser";
    show-icons:                 true;
    display-drun:               " Apps";
    display-run:                " Run";
    display-filebrowser:        " Files";
    display-window:             " Windows";
	drun-display-format:        "{name} [<span weight='light' size='small'><i>({generic})</i></span>]";
	window-format:              "{w} · {c} · {t}";
}

/*****----- Global Properties -----*****/
@import                          "shared/colors.rasi"
@import                          "shared/fonts.rasi"

* {
    border-colour:               var(selected);
    handle-colour:               var(selected);
    background-colour:           var(background);
    foreground-colour:           var(foreground);
    alternate-background:        var(background-alt);
    normal-background:           var(background);
    normal-foreground:           var(foreground);
    urgent-background:           var(urgent);
    urgent-foreground:           var(background);
    active-background:           var(active);
    active-foreground:           var(background);
    selected-normal-background:  var(selected);
    selected-normal-foreground:  var(background);
    selected-urgent-background:  var(active);
    selected-urgent-foreground:  var(background);
    selected-active-background:  var(urgent);
    selected-active-foreground:  var(background);
    alternate-normal-background: var(background);
    alternate-normal-foreground: var(foreground);
    alternate-urgent-background: var(urgent);
    alternate-urgent-foreground: var(background);
    alternate-active-background: var(active);
    alternate-active-foreground: var(background);
}

/*****----- Main Window -----*****/
window {
    /* properties for window widget */
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  false;
    width:                       800px;
    x-offset:                    0px;
    y-offset:                    0px;

    /* properties for all widgets */
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      2px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    cursor:                      "default";
    /* Backgroud Colors */
    background-color:            @background-colour;
    /* Backgroud Image */
    //background-image:          url("/path/to/image.png", none);
    /* Simple Linear Gradient */
    //background-image:          linear-gradient(red, orange, pink, purple);
    /* Directional Linear Gradient */
    //background-image:          linear-gradient(to bottom, pink, yellow, magenta);
    /* Angle Linear Gradient */
    //background-image:          linear-gradient(45, cyan, purple, indigo);
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     40px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @border-colour;
    background-color:            transparent;
    children:                    [ "inputbar", "message", "listview", "mode-switcher" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    children:                    [ "prompt", "textbox-prompt-colon", "entry" ];
}

prompt {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
}
textbox-prompt-colon {
    enabled:                     true;
    expand:                      false;
    str:                         "::";
    background-color:            inherit;
    text-color:                  inherit;
}
entry {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
    cursor:                      text;
    placeholder:                 "Search...";
    placeholder-color:           inherit;
}
num-filtered-rows {
    enabled:                     true;
    expand:                      false;
    background-color:            inherit;
    text-color:                  inherit;
}
textbox-num-sep {
    enabled:                     true;
    expand:                      false;
    str:                         "/";
    background-color:            inherit;
    text-color:                  inherit;
}
num-rows {
    enabled:                     true;
    expand:                      false;
    background-color:            inherit;
    text-color:                  inherit;
}
case-indicator {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     2;
    lines:                       10;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   true;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    spacing:                     5px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    cursor:                      "default";
}
scrollbar {
    handle-width:                10px ;
    handle-color:                @handle-colour;
    border-radius:               10px;
    background-color:            @alternate-background;
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    cursor:                      pointer;
}
element normal.normal {
    background-color:            var(normal-background);
    text-color:                  var(normal-foreground);
}
element normal.urgent {
    background-color:            var(urgent-background);
    text-color:                  var(urgent-foreground);
}
element normal.active {
    background-color:            var(active-background);
    text-color:                  var(active-foreground);
}
element selected.normal {
    background-color:            var(selected-normal-background);
    text-color:                  var(selected-normal-foreground);
}
element selected.urgent {
    background-color:            var(selected-urgent-background);
    text-color:                  var(selected-urgent-foreground);
}
element selected.active {
    background-color:            var(selected-active-background);
    text-color:                  var(selected-active-foreground);
}
element alternate.normal {
    background-color:            var(alternate-normal-background);
    text-color:                  var(alternate-normal-foreground);
}
element alternate.urgent {
    background-color:            var(alternate-urgent-background);
    text-color:                  var(alternate-urgent-foreground);
}
element alternate.active {
    background-color:            var(alternate-active-background);
    text-color:                  var(alternate-active-foreground);
}
element-icon {
    background-color:            transparent;
    text-color:                  inherit;
    size:                        24px;
    cursor:                      inherit;
}
element-text {
    background-color:            transparent;
    text-color:                  inherit;
    highlight:                   inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.0;
}

/*****----- Mode Switcher -----*****/
mode-switcher{
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
}
button {
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @alternate-background;
    text-color:                  inherit;
    cursor:                      pointer;
}
button selected {
    background-color:            var(selected-normal-background);
    text-color:                  var(selected-normal-foreground);
}

/*****----- Message -----*****/
message {
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
}
textbox {
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @alternate-background;
    text-color:                  @foreground-colour;
    vertical-align:              0.5;
    horizontal-align:            0.0;
    highlight:                   none;
    placeholder-color:           @foreground-colour;
    blink:                       true;
    markup:                      true;
}
error-message {
    padding:                     10px;
    border:                      2px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @background-colour;
    text-color:                  @foreground-colour;
}
  '';

  xdg.configFile."/home/john1917/.config/rofi/pdf-launcher/style-1.rasi".text = ''
  /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Rofi Theme File
 * Rofi Version: 1.7.3
 **/

/*****----- Configuration -----*****/
configuration {
	modi:                       "drun,run,filebrowser";
    show-icons:                 true;
    display-drun:               " ";
    display-run:                " Run";
    display-filebrowser:        " Files";
    display-window:             " Windows";
	drun-display-format:        "{name} [<span weight='light' size='small'><i>({generic})</i></span>]";
	window-format:              "{w} · {c} · {t}";
}

/*****----- Global Properties -----*****/
@import                          "shared/colors.rasi"
@import                          "shared/fonts.rasi"

* {
    border-colour:               var(selected);
    handle-colour:               var(selected);
    background-colour:           var(background);
    foreground-colour:           var(foreground);
    alternate-background:        var(background-alt);
    normal-background:           var(background);
    normal-foreground:           var(foreground);
    urgent-background:           var(urgent);
    urgent-foreground:           var(background);
    active-background:           var(active);
    active-foreground:           var(background);
    selected-normal-background:  var(selected);
    selected-normal-foreground:  var(background);
    selected-urgent-background:  var(active);
    selected-urgent-foreground:  var(background);
    selected-active-background:  var(urgent);
    selected-active-foreground:  var(background);
    alternate-normal-background: var(background);
    alternate-normal-foreground: var(foreground);
    alternate-urgent-background: var(urgent);
    alternate-urgent-foreground: var(background);
    alternate-active-background: var(active);
    alternate-active-foreground: var(background);
}

/*****----- Main Window -----*****/
window {
    /* properties for window widget */
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  false;
    width:                       800px;
    x-offset:                    0px;
    y-offset:                    0px;

    /* properties for all widgets */
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      2px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    cursor:                      "default";
    /* Backgroud Colors */
    background-color:            @background-colour;
    /* Backgroud Image */
    //background-image:          url("/path/to/image.png", none);
    /* Simple Linear Gradient */
    //background-image:          linear-gradient(red, orange, pink, purple);
    /* Directional Linear Gradient */
    //background-image:          linear-gradient(to bottom, pink, yellow, magenta);
    /* Angle Linear Gradient */
    //background-image:          linear-gradient(45, cyan, purple, indigo);
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     40px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @border-colour;
    background-color:            transparent;
    children:                    [ "inputbar", "message", "listview", "mode-switcher" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    children:                    [ "prompt", "textbox-prompt-colon", "entry" ];
}

prompt {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
}
textbox-prompt-colon {
    enabled:                     true;
    expand:                      false;
    str:                         "::";
    background-color:            inherit;
    text-color:                  inherit;
}
entry {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
    cursor:                      text;
    placeholder:                 "Select PDF...";
    placeholder-color:           inherit;
}
num-filtered-rows {
    enabled:                     true;
    expand:                      false;
    background-color:            inherit;
    text-color:                  inherit;
}
textbox-num-sep {
    enabled:                     true;
    expand:                      false;
    str:                         "/";
    background-color:            inherit;
    text-color:                  inherit;
}
num-rows {
    enabled:                     true;
    expand:                      false;
    background-color:            inherit;
    text-color:                  inherit;
}
case-indicator {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     1;
    lines:                       10;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   true;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    spacing:                     5px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    cursor:                      "default";
}
scrollbar {
    handle-width:                10px ;
    handle-color:                @handle-colour;
    border-radius:               10px;
    background-color:            @alternate-background;
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    cursor:                      pointer;
}
element normal.normal {
    background-color:            var(normal-background);
    text-color:                  var(normal-foreground);
}
element normal.urgent {
    background-color:            var(urgent-background);
    text-color:                  var(urgent-foreground);
}
element normal.active {
    background-color:            var(active-background);
    text-color:                  var(active-foreground);
}
element selected.normal {
    background-color:            var(selected-normal-background);
    text-color:                  var(selected-normal-foreground);
}
element selected.urgent {
    background-color:            var(selected-urgent-background);
    text-color:                  var(selected-urgent-foreground);
}
element selected.active {
    background-color:            var(selected-active-background);
    text-color:                  var(selected-active-foreground);
}
element alternate.normal {
    background-color:            var(alternate-normal-background);
    text-color:                  var(alternate-normal-foreground);
}
element alternate.urgent {
    background-color:            var(alternate-urgent-background);
    text-color:                  var(alternate-urgent-foreground);
}
element alternate.active {
    background-color:            var(alternate-active-background);
    text-color:                  var(alternate-active-foreground);
}
element-icon {
    background-color:            transparent;
    text-color:                  inherit;
    size:                        24px;
    cursor:                      inherit;
}
element-text {
    background-color:            transparent;
    text-color:                  inherit;
    highlight:                   inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.0;
}

/*****----- Mode Switcher -----*****/
mode-switcher{
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
}
button {
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @alternate-background;
    text-color:                  inherit;
    cursor:                      pointer;
}
button selected {
    background-color:            var(selected-normal-background);
    text-color:                  var(selected-normal-foreground);
}

/*****----- Message -----*****/
message {
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
}
textbox {
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @alternate-background;
    text-color:                  @foreground-colour;
    vertical-align:              0.5;
    horizontal-align:            0.0;
    highlight:                   none;
    placeholder-color:           @foreground-colour;
    blink:                       true;
    markup:                      true;
}
error-message {
    padding:                     10px;
    border:                      2px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @background-colour;
    text-color:                  @foreground-colour;
}
  '';

xdg.configFile."/home/john1917/.config/rofi/pdf-launcher/shared/colors.rasi".text = ''
/**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Colors
 *
 * Available Colors Schemes
 *
 * adapta    catppuccin    everforest    navy       paper
 * arc       cyberpunk     gruvbox       nord       solarized
 * black     dracula       lovelace      onedark    yousai
 *
 **/

/* Import color-scheme from `colors` directory */

@import "~/.config/rofi/colors/everblush.rasi"
'';

xdg.configFile."/home/john1917/.config/rofi/pdf-launcher/shared/fonts.rasi".text = ''
/**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Fonts
 *
 **/

* {
    font: "JetBrains Mono Nerd Font 10";
}
'';

xdg.configFile."/home/john1917/.config/rofi/powermenu/powermenu.sh" = {
  executable = true;
  text = '' 
  #!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Power Menu
#
## Available Styles
#
## style-1   style-2   style-3   style-4   style-5

# Current Theme
dir="$HOME/.config/rofi/powermenu/"
theme='style-1'

# CMDs
uptime="`uptime -p | sed -e 's/up //g'`"
host=`hostname`

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
		-p "$host" \
		-mesg "Uptime: $uptime" \
		-theme ''${dir}/''${theme}.rasi
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
		-theme ''${dir}/''${theme}.rasi
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
			mpc -q pause
			systemctl suspend && swaylock
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
case ''${chosen} in
    $shutdown)
		run_cmd --shutdown
        ;;
    $reboot)
		run_cmd --reboot
        ;;
    $lock)
		if [[ -x '/usr/bin/betterlockscreen' ]]; then
			betterlockscreen -l
		elif [[ -x '/usr/bin/i3lock' ]]; then
			i3lock
		fi
        ;;
    $suspend)
		run_cmd --suspend
        ;;
    $logout)
		run_cmd --logout
        ;;
esac
  '';
  };

  xdg.configFile."/home/john1917/.config/rofi/powermenu/style-1.rasi".text = ''
    /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Rofi Theme File
 * Rofi Version: 1.7.3
 **/

/*****----- Configuration -----*****/
configuration {
    show-icons:                 false;
}

/*****----- Global Properties -----*****/
@import                          "shared/colors.rasi"
@import                          "shared/fonts.rasi"

/*****----- Main Window -----*****/
window {
    /* properties for window widget */
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  false;
    width:                       400px;
    x-offset:                    0px;
    y-offset:                    0px;

    /* properties for all widgets */
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      2px solid;
    border-radius:               6px;
    border-color:                @selected;
    cursor:                      "default";
    background-color:            @background;
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     20px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    children:                    [ "inputbar", "message", "listview" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    children:                    [ "textbox-prompt-colon", "prompt"];
}

textbox-prompt-colon {
    enabled:                     true;
    expand:                      false;
    str:                         "";
    padding:                     10px 14px;
    border-radius:               6px;
    background-color:            @urgent;
    text-color:                  @background;
}
prompt {
    enabled:                     true;
    padding:                     10px;
    border-radius:               6px;
    background-color:            @active;
    text-color:                  @background;
}

/*****----- Message -----*****/
message {
    enabled:                     true;
    margin:                      0px;
    padding:                     10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @selected;
    background-color:            @background-alt;
    text-color:                  @foreground;
}
textbox {
    background-color:            inherit;
    text-color:                  inherit;
    vertical-align:              0.5;
    horizontal-align:            0.0;
    placeholder-color:           @foreground;
    blink:                       true;
    markup:                      true;
}
error-message {
    padding:                     10px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            @background;
    text-color:                  @foreground;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     1;
    lines:                       5;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   false;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    spacing:                     5px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    cursor:                      "default";
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    spacing:                     0px;
    margin:                      0px;
    padding:                     10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    cursor:                      pointer;
}
element-text {
    background-color:            transparent;
    text-color:                  inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.0;
}
element selected.normal {
    background-color:            var(selected);
    text-color:                  var(background);
}
  '';

  xdg.configFile."/home/john1917/.config/rofi/powermenu/shared/colors.rasi".text = ''
  /**
  *
   * Author : Aditya Shakya (adi1090x)
   * Github : @adi1090x
   * 
   * Colors
   *
   * Available Colors Schemes
   *
   * adapta    catppuccin    everforest    navy       paper
   * arc       cyberpunk     gruvbox       nord       solarized
   * black     dracula       lovelace      onedark    yousai
   *
   **/

  /* Import color-scheme from `colors` directory */

  @import "~/.config/rofi/colors/everblush.rasi"
  '';

  xdg.configFile."/home/john1917/.config/rofi/powermenu/shared/fonts.rasi".text = ''
 /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Fonts
 *
 **/

 * {
    font: "JetBrains Mono Nerd Font 10";
  }
  '';

  xdg.configFile."/home/john1917/.config/rofi/screenshot/style-1.rasi".text = ''
  /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Rofi Theme File
 * Rofi Version: 1.7.3
 **/

/*****----- Configuration -----*****/
configuration {
    show-icons:                 false;
}

/*****----- Global Properties -----*****/
@import                          "shared/colors.rasi"
@import                          "shared/fonts.rasi"

/*****----- Main Window -----*****/
window {
    /* properties for window widget */
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  false;
    width:                       400px;
    x-offset:                    0px;
    y-offset:                    0px;

    /* properties for all widgets */
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      2px solid;
    border-radius:               6px;
    border-color:                @selected;
    cursor:                      "default";
    background-color:            @background;
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     20px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    children:                    [ "inputbar", "message", "listview" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    children:                    [ "textbox-prompt-colon", "prompt"];
}

textbox-prompt-colon {
    enabled:                     true;
    expand:                      false;
    str:                         "󰄀 ";
    padding:                     10px 14px;
    border-radius:               6px;
    background-color:            @urgent;
    text-color:                  @background;
}
prompt {
    enabled:                     true;
    padding:                     10px;
    border-radius:               6px;
    background-color:            @active;
    text-color:                  @background;
}

/*****----- Message -----*****/
message {
    enabled:                     true;
    margin:                      0px;
    padding:                     10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @selected;
    background-color:            @background-alt;
    text-color:                  @foreground;
}
textbox {
    background-color:            inherit;
    text-color:                  inherit;
    vertical-align:              0.5;
    horizontal-align:            0.0;
    placeholder-color:           @foreground;
    blink:                       true;
    markup:                      true;
}
error-message {
    padding:                     10px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            @background;
    text-color:                  @foreground;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     1;
    lines:                       2;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   false;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    spacing:                     5px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    cursor:                      "default";
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    spacing:                     0px;
    margin:                      0px;
    padding:                     10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    cursor:                      pointer;
}
element-text {
    background-color:            transparent;
    text-color:                  inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.0;
}
element selected.normal {
    background-color:            var(selected);
    text-color:                  var(background);
}
  '';

  xdg.configFile."/home/john1917/.config/rofi/screenshot/shared/colors.rasi".text = ''
  /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Colors
 *
 * Available Colors Schemes
 *
 * adapta    catppuccin    everforest    navy       paper
 * arc       cyberpunk     gruvbox       nord       solarized
 * black     dracula       lovelace      onedark    yousai
 *
 **/

/* Import color-scheme from `colors` directory */

@import "~/.config/rofi/colors/everblush.rasi"
  '';

  xdg.configFile."/home/john1917/.config/rofi/screenshot/shared/fonts.rasi".text = ''
  /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Fonts
 *
 **/

* {
    font: "JetBrains Mono Nerd Font 10";
}
  '';
  
  xdg.configFile."/home/john1917/.config/rofi/wallpaper-selection/style-1.rasi".text = ''
  /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Rofi Theme File
 * Rofi Version: 1.7.3
 **/

/*****----- Configuration -----*****/
configuration {
	modi:                       "drun,run,filebrowser";
    show-icons:                 true;
    display-drun:               " Apps";
    display-run:                " Run";
    display-filebrowser:        " Files";
    display-window:             " Windows";
	drun-display-format:        "{name} [<span weight='light' size='small'><i>({generic})</i></span>]";
	window-format:              "{w} · {c} · {t}";
}

/*****----- Global Properties -----*****/
@import                          "shared/colors.rasi"
@import                          "shared/fonts.rasi"

* {
    border-colour:               var(selected);
    handle-colour:               var(selected);
    background-colour:           var(background);
    foreground-colour:           var(foreground);
    alternate-background:        var(background-alt);
    normal-background:           var(background);
    normal-foreground:           var(foreground);
    urgent-background:           var(urgent);
    urgent-foreground:           var(background);
    active-background:           var(active);
    active-foreground:           var(background);
    selected-normal-background:  var(selected);
    selected-normal-foreground:  var(background);
    selected-urgent-background:  var(active);
    selected-urgent-foreground:  var(background);
    selected-active-background:  var(urgent);
    selected-active-foreground:  var(background);
    alternate-normal-background: var(background);
    alternate-normal-foreground: var(foreground);
    alternate-urgent-background: var(urgent);
    alternate-urgent-foreground: var(background);
    alternate-active-background: var(active);
    alternate-active-foreground: var(background);
}

/*****----- Main Window -----*****/
window {
    /* properties for window widget */
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  false;
    width:                       800px;
    x-offset:                    0px;
    y-offset:                    0px;

    /* properties for all widgets */
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      2px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    cursor:                      "default";
    /* Backgroud Colors */
    background-color:            @background-colour;
    /* Backgroud Image */
    //background-image:          url("/path/to/image.png", none);
    /* Simple Linear Gradient */
    //background-image:          linear-gradient(red, orange, pink, purple);
    /* Directional Linear Gradient */
    //background-image:          linear-gradient(to bottom, pink, yellow, magenta);
    /* Angle Linear Gradient */
    //background-image:          linear-gradient(45, cyan, purple, indigo);
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     40px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @border-colour;
    background-color:            transparent;
    children:                    [ "inputbar", "message", "listview", "mode-switcher" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    children:                    [ "prompt", "textbox-prompt-colon", "entry" ];
}

prompt {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
}
textbox-prompt-colon {
    enabled:                     true;
    expand:                      false;
    str:                         "::";
    background-color:            inherit;
    text-color:                  inherit;
}
entry {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
    cursor:                      text;
    placeholder:                 "Select Wallpaper...";
    placeholder-color:           inherit;
}
num-filtered-rows {
    enabled:                     true;
    expand:                      false;
    background-color:            inherit;
    text-color:                  inherit;
}
textbox-num-sep {
    enabled:                     true;
    expand:                      false;
    str:                         "/";
    background-color:            inherit;
    text-color:                  inherit;
}
num-rows {
    enabled:                     true;
    expand:                      false;
    background-color:            inherit;
    text-color:                  inherit;
}
case-indicator {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     3;
    lines:                       5;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   true;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    spacing:                     5px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    cursor:                      "default";
}
scrollbar {
    handle-width:                10px ;
    handle-color:                @handle-colour;
    border-radius:               6px;
    background-color:            @alternate-background;
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    cursor:                      pointer;
}
element normal.normal {
    background-color:            var(normal-background);
    text-color:                  var(normal-foreground);
}
element normal.urgent {
    background-color:            var(urgent-background);
    text-color:                  var(urgent-foreground);
}
element normal.active {
    background-color:            var(active-background);
    text-color:                  var(active-foreground);
}
element selected.normal {
    background-color:            var(selected-normal-background);
    text-color:                  var(selected-normal-foreground);
}
element selected.urgent {
    background-color:            var(selected-urgent-background);
    text-color:                  var(selected-urgent-foreground);
}
element selected.active {
    background-color:            var(selected-active-background);
    text-color:                  var(selected-active-foreground);
}
element alternate.normal {
    background-color:            var(alternate-normal-background);
    text-color:                  var(alternate-normal-foreground);
}
element alternate.urgent {
    background-color:            var(alternate-urgent-background);
    text-color:                  var(alternate-urgent-foreground);
}
element alternate.active {
    background-color:            var(alternate-active-background);
    text-color:                  var(alternate-active-foreground);
}
element-icon {
    background-color:            transparent;
    text-color:                  inherit;
    size:                        84px;
    cursor:                      inherit;
}
element-text {
    background-color:            transparent;
    text-color:                  inherit;
    highlight:                   inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.0;
}

/*****----- Mode Switcher -----*****/
mode-switcher{
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
}
button {
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @alternate-background;
    text-color:                  inherit;
    cursor:                      pointer;
}
button selected {
    background-color:            var(selected-normal-background);
    text-color:                  var(selected-normal-foreground);
}

/*****----- Message -----*****/
message {
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
}
textbox {
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @alternate-background;
    text-color:                  @foreground-colour;
    vertical-align:              0.5;
    horizontal-align:            0.0;
    highlight:                   none;
    placeholder-color:           @foreground-colour;
    blink:                       true;
    markup:                      true;
}
error-message {
    padding:                     10px;
    border:                      2px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @background-colour;
    text-color:                  @foreground-colour;
}
  '';

  xdg.configFile."/home/john1917/.config/rofi/wallpaper-selection/shared/fonts.rasi".text = ''
    /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Fonts
 *
 **/

* {
    font: "JetBrains Mono Nerd Font 10";
}
  '';

  xdg.configFile."/home/john1917/.config/rofi/wallpaper-selection/shared/colors.rasi".text = ''
  /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Colors
 *
 * Available Colors Schemes
 *
 * adapta    catppuccin    everforest    navy       paper
 * arc       cyberpunk     gruvbox       nord       solarized
 * black     dracula       lovelace      onedark    yousai
 *
 **/

/* Import color-scheme from `colors` directory */

@import "~/.config/rofi/colors/everblush.rasi"
  '';

  xdg.configFile."/home/john1917/.config/rofi/wifi-menu/shared/colors.rasi".text = ''
  /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Colors
 *
 * Available Colors Schemes
 *
 * adapta    catppuccin    everforest    navy       paper
 * arc       cyberpunk     gruvbox       nord       solarized
 * black     dracula       lovelace      onedark    yousai
 *
 **/

/* Import color-scheme from `colors` directory */

@import "~/.config/rofi/colors/everblush.rasi"
  '';

  xdg.configFile."/home/john1917/.config/rofi/wifi-menu/shared/fonts.rasi".text = ''
  /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Fonts
 *
 **/

* {
    font: "JetBrains Mono Nerd Font 10";
}
  '';

  xdg.configFile."/home/john1917/.config/rofi/wifi-menu/style-1.rasi".text = ''
/*****----- Configuration -----*****/
configuration {
	modi:                       "drun,run,filebrowser";
    show-icons:                 true;
    display-drun:               " Apps";
    display-run:                " Run";
    display-filebrowser:        " Files";
    display-window:             " Windows";
	drun-display-format:        "{name} [<span weight='light' size='small'><i>({generic})</i></span>]";
	window-format:              "{w} · {c} · {t}";
}

/*****----- Global Properties -----*****/
@import                          "shared/colors.rasi"
@import                          "shared/fonts.rasi"

* {
    border-colour:               var(selected);
    handle-colour:               var(selected);
    background-colour:           var(background);
    foreground-colour:           var(foreground);
    alternate-background:        var(background-alt);
    normal-background:           var(background);
    normal-foreground:           var(foreground);
    urgent-background:           var(urgent);
    urgent-foreground:           var(background);
    active-background:           var(active);
    active-foreground:           var(background);
    selected-normal-background:  var(selected);
    selected-normal-foreground:  var(background);
    selected-urgent-background:  var(active);
    selected-urgent-foreground:  var(background);
    selected-active-background:  var(urgent);
    selected-active-foreground:  var(background);
    alternate-normal-background: var(background);
    alternate-normal-foreground: var(foreground);
    alternate-urgent-background: var(urgent);
    alternate-urgent-foreground: var(background);
    alternate-active-background: var(active);
    alternate-active-foreground: var(background);
}

/*****----- Main Window -----*****/
window {
    /* properties for window widget */
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  false;
    width:                       800px;
    x-offset:                    0px;
    y-offset:                    0px;

    /* properties for all widgets */
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      2px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    cursor:                      "default";
    /* Backgroud Colors */
    background-color:            @background-colour;
    /* Backgroud Image */
    //background-image:          url("/path/to/image.png", none);
    /* Simple Linear Gradient */
    //background-image:          linear-gradient(red, orange, pink, purple);
    /* Directional Linear Gradient */
    //background-image:          linear-gradient(to bottom, pink, yellow, magenta);
    /* Angle Linear Gradient */
    //background-image:          linear-gradient(45, cyan, purple, indigo);
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     40px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @border-colour;
    background-color:            transparent;
    children:                    [ "inputbar", "message", "listview", "mode-switcher" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    children:                    [ "prompt", "textbox-prompt-colon", "entry" ];
}

prompt {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
}
textbox-prompt-colon {
    enabled:                     true;
    expand:                      false;
    str:                         "::";
    background-color:            inherit;
    text-color:                  inherit;
}
entry {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
    cursor:                      text;
    placeholder:                 "Connect to Network...";
    placeholder-color:           inherit;
}
num-filtered-rows {
    enabled:                     true;
    expand:                      false;
    background-color:            inherit;
    text-color:                  inherit;
}
textbox-num-sep {
    enabled:                     true;
    expand:                      false;
    str:                         "/";
    background-color:            inherit;
    text-color:                  inherit;
}
num-rows {
    enabled:                     true;
    expand:                      false;
    background-color:            inherit;
    text-color:                  inherit;
}
case-indicator {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     1;
    lines:                       10;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   true;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    spacing:                     5px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    cursor:                      "default";
}
scrollbar {
    handle-width:                10px ;
    handle-color:                @handle-colour;
    border-radius:               6px;
    background-color:            @alternate-background;
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    cursor:                      pointer;
}
element normal.normal {
    background-color:            var(normal-background);
    text-color:                  var(normal-foreground);
}
element normal.urgent {
    background-color:            var(urgent-background);
    text-color:                  var(urgent-foreground);
}
element normal.active {
    background-color:            var(active-background);
    text-color:                  var(active-foreground);
}
element selected.normal {
    background-color:            var(selected-normal-background);
    text-color:                  var(selected-normal-foreground);
}
element selected.urgent {
    background-color:            var(selected-urgent-background);
    text-color:                  var(selected-urgent-foreground);
}
element selected.active {
    background-color:            var(selected-active-background);
    text-color:                  var(selected-active-foreground);
}
element alternate.normal {
    background-color:            var(alternate-normal-background);
    text-color:                  var(alternate-normal-foreground);
}
element alternate.urgent {
    background-color:            var(alternate-urgent-background);
    text-color:                  var(alternate-urgent-foreground);
}
element alternate.active {
    background-color:            var(alternate-active-background);
    text-color:                  var(alternate-active-foreground);
}
element-icon {
    background-color:            transparent;
    text-color:                  inherit;
    size:                        24px;
    cursor:                      inherit;
}
element-text {
    background-color:            transparent;
    text-color:                  inherit;
    highlight:                   inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.0;
}

/*****----- Mode Switcher -----*****/
mode-switcher{
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
}
button {
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @alternate-background;
    text-color:                  inherit;
    cursor:                      pointer;
}
button selected {
    background-color:            var(selected-normal-background);
    text-color:                  var(selected-normal-foreground);
}

/*****----- Message -----*****/
message {
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
}
textbox {
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @alternate-background;
    text-color:                  @foreground-colour;
    vertical-align:              0.5;
    horizontal-align:            0.0;
    highlight:                   none;
    placeholder-color:           @foreground-colour;
    blink:                       true;
    markup:                      true;
}
error-message {
    padding:                     10px;
    border:                      2px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @background-colour;
    text-color:                  @foreground-colour;
}
  '';

  xdg.configFile."/home/john1917/.config/rofi/wifi-menu/wifi-password.rasi".text = ''
  /**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Rofi Theme File
 * Rofi Version: 1.7.3
 **/

/*****----- Configuration -----*****/
configuration {
	modi:                       "drun,run,filebrowser";
    show-icons:                 true;
    display-drun:               " Apps";
    display-run:                " Run";
    display-filebrowser:        " Files";
    display-window:             " Windows";
	drun-display-format:        "{name} [<span weight='light' size='small'><i>({generic})</i></span>]";
	window-format:              "{w} · {c} · {t}";
}

/*****----- Global Properties -----*****/
@import                          "shared/colors.rasi"
@import                          "shared/fonts.rasi"

* {
    border-colour:               var(selected);
    handle-colour:               var(selected);
    background-colour:           var(background);
    foreground-colour:           var(foreground);
    alternate-background:        var(background-alt);
    normal-background:           var(background);
    normal-foreground:           var(foreground);
    urgent-background:           var(urgent);
    urgent-foreground:           var(background);
    active-background:           var(active);
    active-foreground:           var(background);
    selected-normal-background:  var(selected);
    selected-normal-foreground:  var(background);
    selected-urgent-background:  var(active);
    selected-urgent-foreground:  var(background);
    selected-active-background:  var(urgent);
    selected-active-foreground:  var(background);
    alternate-normal-background: var(background);
    alternate-normal-foreground: var(foreground);
    alternate-urgent-background: var(urgent);
    alternate-urgent-foreground: var(background);
    alternate-active-background: var(active);
    alternate-active-foreground: var(background);
}

/*****----- Main Window -----*****/
window {
    /* properties for window widget */
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  false;
    width:                       800px;
    x-offset:                    0px;
    y-offset:                    0px;

    /* properties for all widgets */
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      2px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    cursor:                      "default";
    /* Backgroud Colors */
    background-color:            @background-colour;
    /* Backgroud Image */
    //background-image:          url("/path/to/image.png", none);
    /* Simple Linear Gradient */
    //background-image:          linear-gradient(red, orange, pink, purple);
    /* Directional Linear Gradient */
    //background-image:          linear-gradient(to bottom, pink, yellow, magenta);
    /* Angle Linear Gradient */
    //background-image:          linear-gradient(45, cyan, purple, indigo);
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     40px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @border-colour;
    background-color:            transparent;
    children:                    [ "inputbar", "message", "listview", "mode-switcher" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    children:                    [ "prompt", "textbox-prompt-colon", "entry" ];
}

prompt {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
}
textbox-prompt-colon {
    enabled:                     true;
    expand:                      false;
    str:                         "::";
    background-color:            inherit;
    text-color:                  inherit;
}
entry {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
    cursor:                      text;
    placeholder:                 "Enter Passphrase...";
    placeholder-color:           inherit;
}
num-filtered-rows {
    enabled:                     true;
    expand:                      false;
    background-color:            inherit;
    text-color:                  inherit;
}
textbox-num-sep {
    enabled:                     true;
    expand:                      false;
    str:                         "/";
    background-color:            inherit;
    text-color:                  inherit;
}
num-rows {
    enabled:                     true;
    expand:                      false;
    background-color:            inherit;
    text-color:                  inherit;
}
case-indicator {
    enabled:                     true;
    background-color:            inherit;
    text-color:                  inherit;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     1;
    lines:                       0;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   true;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                false;
    fixed-columns:               true;
    
    spacing:                     5px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    cursor:                      "default";
}
scrollbar {
    handle-width:                10px ;
    handle-color:                @handle-colour;
    border-radius:               6px;
    background-color:            @alternate-background;
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
    cursor:                      pointer;
}
element normal.normal {
    background-color:            var(normal-background);
    text-color:                  var(normal-foreground);
}
element normal.urgent {
    background-color:            var(urgent-background);
    text-color:                  var(urgent-foreground);
}
element normal.active {
    background-color:            var(active-background);
    text-color:                  var(active-foreground);
}
element selected.normal {
    background-color:            var(selected-normal-background);
    text-color:                  var(selected-normal-foreground);
}
element selected.urgent {
    background-color:            var(selected-urgent-background);
    text-color:                  var(selected-urgent-foreground);
}
element selected.active {
    background-color:            var(selected-active-background);
    text-color:                  var(selected-active-foreground);
}
element alternate.normal {
    background-color:            var(alternate-normal-background);
    text-color:                  var(alternate-normal-foreground);
}
element alternate.urgent {
    background-color:            var(alternate-urgent-background);
    text-color:                  var(alternate-urgent-foreground);
}
element alternate.active {
    background-color:            var(alternate-active-background);
    text-color:                  var(alternate-active-foreground);
}
element-icon {
    background-color:            transparent;
    text-color:                  inherit;
    size:                        24px;
    cursor:                      inherit;
}
element-text {
    background-color:            transparent;
    text-color:                  inherit;
    highlight:                   inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.0;
}

/*****----- Mode Switcher -----*****/
mode-switcher{
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
}
button {
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @alternate-background;
    text-color:                  inherit;
    cursor:                      pointer;
}
button selected {
    background-color:            var(selected-normal-background);
    text-color:                  var(selected-normal-foreground);
}

/*****----- Message -----*****/
message {
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @border-colour;
    background-color:            transparent;
    text-color:                  @foreground-colour;
}
textbox {
    padding:                     5px 10px;
    border:                      0px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @alternate-background;
    text-color:                  @foreground-colour;
    vertical-align:              0.5;
    horizontal-align:            0.0;
    highlight:                   none;
    placeholder-color:           @foreground-colour;
    blink:                       true;
    markup:                      true;
}
error-message {
    padding:                     10px;
    border:                      2px solid;
    border-radius:               6px;
    border-color:                @border-colour;
    background-color:            @background-colour;
    text-color:                  @foreground-colour;
}
  '';

} 
