{config, pkgs, ...}: {
  # Enable waybar
  programs.waybar = {
    enable = true;
    style = '' 
          /*
          *
          * TokyoNight Night palette
          * Maintainer: johnk1917
          *
          */
         /* 
          @define-color background #1a1b26;
          @define-color foreground #c0caf5;
          @define-color alt_background #1f1f2d;
          @define-color accent #7aa2f7;

          @define-color black #32344a;
          @define-color red #f7768e;
          @define-color green #9ece6a;
          @define-color yellow #e0af68;
          @define-color blue #7aa2f7;
          @define-color magenta #bb9af7;
          @define-color cyan #7dcfff;
          @define-color white #a9b1d6;

          @define-color alt_black #414868;
          @define-color alt_red #f7768e;
          @define-color alt_green #18ffb1;
          @define-color alt_blue #7aa5f7;
          @define-color alt_yellow #e0af68;
          @define-color alt_magenta #bb9af7;
          @define-color alt_cyan #7bdaf1;
          @define-color alt_white #c0caf5;
        */

          /* Catppuccin Mocha palette*/ 
          
          /*@define-color foreground #cdd6f4;
          @define-color background #181825;
          @define-color alt_background #1e1e2e;
          @define-color accent #89b4fa;

          @define-color black #45475a;
          @define-color red #f38ba8;
          @define-color green #a6e3a1;
          @define-color blue #89b4fa;
          @define-color yellow #fab387;
          @define-color magenta #f5c2e7;
          @define-color cyan #94e2d5;
          @define-color white #bac2de;

          @define-color alt_black #585b70;
          @define-color alt_red #f38ba8;
          @define-color alt_green #a6e3a1;
          @define-color alt_blue #89b4fa;
          @define-color alt_yellow #f9e2af;
          @define-color alt_magenta #f5c2e7;
          @define-color alt_cyan #94e2d5;
          @define-color alt_white #a6adc8;*/

          /* Kanagawa Palette */ 
          /* 
          @define-color foreground #dcd7ba;
          @define-color background #1f1f28;
          @define-color alt_background #25252f;
          @define-color accent #7e9dc8;

          @define-color black #090618;
          @define-color red #c34043;
          @define-color green #76946a;
          @define-color blue #7e9cd8; 
          @define-color yellow #c0a36e;
          @define-color magenta #958fb8;
          @define-color cyan #6a9589;
          @define-color white #c8c093;

          @define-color alt_black #727169;
          @define-color alt_red #e82424;
          @define-color alt_green #98bb6c;
          @define-color alt_blue #7fb4ca;
          @define-color alt_yellow #e6c384;
          @define-color alt_magenta #938aa9;
          @define-color alt_cyan #7aa89f;
          @define-color alt_white #dcd7ba;
          */

          /* Gruvbox Palette */ 
          @define-color foreground #ebdbb2;
          @define-color background #1d2021;
          @define-color alt_background #282828;
          @define-color accent #689d6a;

          @define-color black #282828;
          @define-color red #cc241d;
          @define-color green #98971a;
          @define-color blue #7daea3;
          @define-color yellow #d79921;
          @define-color magenta #b16286;
          @define-color cyan #689d6a;
          @define-color white #a89984;

          @define-color alt_black #3c3836;
          @define-color alt_red #fb4934;
          @define-color alt_green #b8bb26;
          @define-color alt_blue #7daea3;
          @define-color alt_yellow #fabd2f;
          @define-color alt_magenta #d3869b;
          @define-color alt_cyan #8ec07c;
          @define-color alt_white #ebdbb2;

        * {

          border: none;
          font-family: JetBrainsMono Nerd Font, sans-serif;
          font-size: 14px;
        }

        window#waybar {
          /* background-color: rgba(18, 21, 29, 0.98); */
          background-color: @background;
          /* background-color: rgba(0, 0, 0, 0); */
          border-radius: 6px;
          color: @foreground;
          opacity: 1;
          transition-property: background-color;
          transition-duration: .5s;
          margin-bottom: -7px;
        }

        window#waybar.hidden {
          opacity: 0.2;
        }

        window#hyprland-window {
          background-color: @background;
        }

        #workspaces,
        #mode,
        #window,
        #cpu,
        #memory,
        #temperature,
        #custom-media,
        #custom-powermenu,
        #custom-fans,
        #custom-wmname,
        #clock,
        #idle_inhibitor,
        #language,
        #pulseaudio,
        #backlight,
        #battery,
        #network,
        #tray {
          background-color: @alt_background;
          padding: 0 10px;
          margin: 5px 2px 5px 2px;
          border: 1px solid rgba(0, 0, 0, 0);
          border-radius: 6px;
          background-clip: padding-box;
        }

        #workspaces button {
          background-color: @alt_background;
          padding: 0 5px;
          min-width: 20px;
          color: @foreground;
        }

        #workspaces button:hover {
          background-color: rgba(0, 0, 0, 0)
        }

        #workspaces button.active {
          color: @accent;
        }

        #workspaces button.urgent {
          color: @red;
        }

        #cpu {
          padding: 0 10px;
          color: @alt_cyan;
        }

        #memory {
          padding: 0 10px;
          color: @alt_cyan;
        }

        #temperature {
          padding: 0 10px;
          color: @blue;
        }

        #temperature.critical {
          background-color: @red;
          padding: 0 10px;
          color: @background;
        }

        #custom-media {
          color: #c678dd;
          padding: 0 10px;
          color: @background;
        }

        #custom-fans {
          padding: 0 10px;
          color: @blue;
        }

        #clock {
          padding: 0 10px;
          color: @blue;
        }

        #idle_inhibitor {
          padding: 0 10px;
          color: @foreground;
        }

        #language {
          padding: 0 10px;
          color: @blue;
        }

        #pulseaudio {
          padding: 0 10px;
          color: @yellow;
        }

        #pulseaudio.muted {
          padding: 0 10px;
          background-color: @red;
          color: @background;
        }

        #backlight {
          padding: 0 10px;
          color: @yellow;
        }

        #battery {
          padding: 0 10px;
          color: @alt_green;
        }

        #battery.charging, #battery.plugged {
          padding: 0 10px;
          background-color: @alt_green;
          color: @background;
        }

        @keyframes blink {
            to {
                background-color: @background;
                color: @red;
            }
        }

        #battery.critical:not(.charging) {
            padding: 0 10px;
            background-color: @red;
            color: @background;
            animation-name: blink;
            animation-duration: 0.5s;
            animation-timing-function: linear;
            animation-iteration-count: infinite;
            animation-direction: alternate;
        }

        #network {
            padding: 0 10px;
            color: @blue;
        }

        #custom-wmname {
            color: @accent;
            background-color: @background;
            font-size: 25px;
            margin: 1px;
            padding: 0px 0px 0px 5px;
        }

        #network.disconnected {
            padding: 0 10px;
            background-color: @red;
            color: @background;
        }
        #custom-powermenu {
            background-color: @red;
            color: @background;
            font-size: 15px;
            padding-right: 6px;
            padding-left: 11px;
            margin: 5px;
        }
    '';
    settings = {
      mainBar = {
        margin = "8px 10px -2px 10px";
        layer = "top";

        modules-left = ["custom/wmname" "hyprland/workspaces" "hyprland/window"];
        modules-center = [];
        modules-right = ["battery" "cpu" "memory" "backlight" "pulseaudio" "clock" "network" "tray" "custom/powermenu"];

      /* Modules configuration */
      "hyprland/workspaces" = {
          active-only = "false";
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
          disable-scroll = "false";
          all-outputs = "true";
          format = "{icon}";
          on-click = "activate";
          format-icons = {
              "1" = " ";
              "2" = " ";
              "3" = "";
              "4" = " ";
              "5" = " ";
              "6" = " ";
              "7" = " ";
              "8" = " ";
              "9" = " ";
              "10" = "󰊴 ";
            };
          };

        "idle_inhibitor" = {
          format = "{icon}";
          format-icons = {
            activated = " ";
            deactivated = " ";
          };
        };

        "tray" = {
          spacing = 8;
        };

        "clock" = {
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
	        format = " {:%H:%M}";
	        format-alt = " {:%A, %B %d, %Y}";
        };

        "cpu" = {
          format = " {usage}%";
          tooltip = "false";
        };

        "memory" = {
          format = " {}%";
        };

        "backlight" = {
          format = "{icon}{percent}%";
          format-icons = ["󰃞 " "󰃟 " "󰃠 "];
          on-scroll-up = "light -A 1";
          on-scroll-down = "light -U 1";
        };

        "battery" = {
          states = {
          warning = "30";
          critical = "15";
        };
          format = "{icon}{capacity}%";
          tooltip-format = "{timeTo} {capacity}%";
          format-charging = "󱐋{capacity}%";
          format-plugged = " ";
          format-alt = "{time} {icon}";
          format-icons = ["  " "  " "  " "  " "  "];
        };
        
        "network" = {
          format-wifi = " {essid} {signalStrength}%";
          format-ethernet = "{ifname}: {ipaddr}/{cidr}  ";
          format-linked = "{ifname} (No IP)  ";
          format-disconnected = "󰤮 Disconnected";
          on-click = "wifi-menu";
          on-click-release = "sleep 0";
          tooltip-format = "{essid} {signalStrength}%";
        };

        "pulseaudio" = {
          format = "{icon}{volume}% {format_source}";
          format-bluetooth = "{icon} {volume}%";
          format-bluetooth-muted = "   {volume}%";
          format-source = "";
          format-source-muted = "";
          format-muted = "  {format_source}";
          format-icons = {
              headphone = " ";
              hands-free = " ";
              headset = " ";
              phone = " ";
              portable = " ";
              car = " ";
              default = [" " " " " "];
          };
          tooltip-format = "{desc} {volume}%";
          on-click = "pactl set-sink-mute @DEFAULT_SINK@ toggle";
          on-click-right = "pactl set-source-mute @DEFAULT_SOURCE@ toggle";
          on-click-middle = "pavucontrol";
          on-click-release = "sleep 0";
          on-click-middle-release = "sleep 0";
        };

        "custom/wmname" = {
          format = " ";
          on-click = "rofi-menu";
          on-click-release = "sleep 0";
        };

        "custom/powermenu" = {
          format = " ";
          on-click = "powermenu";
          on-click-release = "sleep 1";
        };
      };
    };
  };
}

