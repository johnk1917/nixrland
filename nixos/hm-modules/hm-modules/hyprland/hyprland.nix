{config, pkgs, ...}: {
  #Enable Hyprland
    wayland.windowManager.hyprland = {
    enable = true;
    settings = { };
    extraConfig = ''
      # Set monitor dimensions
      monitor=eDP-1, 1920x1080, 0x0, 1

      # Some default env vars.
      env = XCURSOR_SIZE,24
      env = EDITOR,nvim
      env = VISUAL,nvim

      # Default directory containing all necessary shell scripts

      # Execute your favorite apps at launch
      exec-once = swww init 
      exec-once = dunst
      exec-once = foot --server
      exec-once = spotifyd
      exec-once = waybar

      # For all categories, see https://wiki.hyprland.org/Configuring/Variables/
      input {
          kb_layout = us
          kb_variant =
          kb_model =
          kb_options =
          kb_rules =

          follow_mouse = 1

          touchpad {
              natural_scroll = no
          }

          sensitivity = 0 # -1.0 - 1.0, 0 means no modification.
      }

      general {
          gaps_in = 5
          gaps_out = 10
          border_size = 3
          col.active_border = rgba(7aa2f7ee) rgba(87aaf8ee) 45deg
          col.inactive_border = rgba(32344aaa)

          layout = master
      }

      decoration {
          rounding = 6

          drop_shadow = yes
          shadow_range = 3
          shadow_render_power = 2
          col.shadow = rgba(32344aee)

          blur {
            enabled = true
            new_optimizations = on
            size = 4
            passes = 2
            ignore_opacity = true
          }
      }

      animations {
          enabled = yes
          bezier = myBezier, 0.05, 0.9, 0.1, 1.05

          animation = windows, 1, 7, myBezier
          animation = windowsOut, 1, 7, default, popin 80%
          animation = border, 1, 10, default
          animation = borderangle, 1, 8, default
          animation = fade, 1, 3, default
          animation = workspaces, 1, 6, default
      }

      misc {
        disable_hyprland_logo = true
      }

      dwindle {
          # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
          pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
          preserve_split = yes # you probably want this
      }

      master {
          # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
          new_is_master = false 
      }

      gestures {
          # See https://wiki.hyprland.org/Configuring/Variables/ for more
          workspace_swipe = off
      }

      # Example per-device config
      # See https://wiki.hyprland.org/Configuring/Keywords/#executing for more
      device:epic-mouse-v1 {
          sensitivity = -0.5
      }

      # Blur waybar
      layerrule = blur, waybar
      layerrule = ignorezero, waybar

      # Window rules
      windowrule = float,^(pavucontrol)$
      windowrule = pin,^(pavucontrol)$
      windowrule = size 900 500,^(pavucontrol)$
      windowrule = move 505 300,^(pavucontrol)$

      ########################################################################################
      #                                                                                      #
      #                                      KEYBINDS                                        #
      #                                                                                      #  
      ########################################################################################

      # Set the modifier key
      $mainMod = SUPER

      # Set alternative modifier
      $altMod = ALT

      # Set terminal
      $terminal = footclient
      $terminal2 = kitty

      # Launch programs
      bind = $mainMod, Return, exec, $terminal
      bind = $mainMod SHIFT, Q, killactive, 
      bind = $altMod SHIFT, M, exit, 
      bind = $mainMod SHIFT, SPACE, togglefloating,
      bind = $mainMod, F, fullscreen
      bind = $mainMod, D, exec, $HOME/.config/rofi/launchers/type-1/launcher.sh
      bind = $mainMod SHIFT, A, exec, $terminal -e ani-cli
      bind = $mainMod, S, exec, screenshot 
      bind = $mainMod, X, exec, powermenu
      bind = $mainMod, W, exec, wallpaper-switch
      bind = $mainMod SHIFT, G, exec, library
      bind = $mainMod SHIFT, W, exec, wifi-menu
      bind = $altMod SHIFT, S, exec, $terminal2 -e spt
      bind = $mainMod SHIFT, D, exec, discord
      bind = $mainMod SHIFT, R, exec, $terminal -e yazi
      bind = $mainMod SHIFT, Z, exec, zathura
      bind = $mainMod SHIFT, S, exec, librewolf
      bind = $mainMod SHIFT, F, exec, nemo
      bind = $mainMod SHIFT, X, exec, firefox
      bind = $mainMod SHIFT, E, exec, libreoffice

      # Restart Waybar 
      bind = $mainMod SHIFT, C, exec, pkill waybar && waybar  
      bind = $mainMod, C, exec, waybar

      # Volume Control
      bind = ,XF86AudioRaiseVolume, exec, volume --up
      bind = ,XF86AudioLowerVolume, exec, volume --down
      bind = ,XF86AudioMute, exec, volume --toggle

      # Brightness Control
      bind = ,XF86MonBrightnessUp, exec, brightness --up
      bind = ,XF86MonBrightnessDown, exec, brightness --down

      # Move focus with mainMod + arrow keys
      bind = $mainMod, j, movefocus, d
      bind = $mainMod, k, movefocus, u
      bind = $mainMod, h, movefocus, l
      bind = $mainMod, l, movefocus, r

      # Switch workspaces with mainMod + [0-9]
      bind = $mainMod, 1, workspace, 1
      bind = $mainMod, 2, workspace, 2
      bind = $mainMod, 3, workspace, 3
      bind = $mainMod, 4, workspace, 4
      bind = $mainMod, 5, workspace, 5
      bind = $mainMod, 6, workspace, 6
      bind = $mainMod, 7, workspace, 7 
      bind = $mainMod, 8, workspace, 8
      bind = $mainMod, 9, workspace, 9
      bind = $mainMod, 0, workspace, 10

      # Move active window to a workspace with mainMod + SHIFT + [0-9]
      bind = $mainMod SHIFT, 1, movetoworkspace, 1
      bind = $mainMod SHIFT, 2, movetoworkspace, 2
      bind = $mainMod SHIFT, 3, movetoworkspace, 3
      bind = $mainMod SHIFT, 4, movetoworkspace, 4
      bind = $mainMod SHIFT, 5, movetoworkspace, 5
      bind = $mainMod SHIFT, 6, movetoworkspace, 6
      bind = $mainMod SHIFT, 7, movetoworkspace, 7
      bind = $mainMod SHIFT, 8, movetoworkspace, 8
      bind = $mainMod SHIFT, 9, movetoworkspace, 9
      bind = $mainMod SHIFT, 0, movetoworkspace, 10

      # Scroll through existing workspaces with mainMod + scroll
      bind = $mainMod, mouse_down, workspace, e+1
      bind = $mainMod, mouse_up, workspace, e-1

      # Move/resize windows with mainMod + SHIFT + Vim Keys 
      bind = $mainMod SHIFT, H, movewindow, l
      bind = $mainMod SHIFT, L, movewindow, r
      bind = $mainMod SHIFT, K, movewindow, u
      bind = $mainMod SHIFT, J, movewindow, d

      # Resize 
      bind = $altMod SHIFT, L, resizeactive, 20 0
      bind = $altMod SHIFT, H, resizeactive, -20 0
      bind = $altMod SHIFT, K, resizeactive, 0 -20
      bind = $altMod SHIFT, J, resizeactive, 0 20

      # Move/resize windows with mainMod + LMB/RMB and dragging
      bindm = $mainMod, mouse:272, movewindow
      bindm = $mainMod, mouse:273, resizewindow
    '';
  };
  }
