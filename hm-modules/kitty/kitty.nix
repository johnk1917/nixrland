{config, pkgs, ... }: {
    xdg.configFile."/home/john1917/.config/kitty/kitty.tokyonight.conf".text = ''
# Tokyo Night color scheme for kitty terminal emulator
# https://github.com/davidmathers/tokyo-night-kitty-theme
#
# Based on Tokyo Night color theme for Visual Studio Code
# https://github.com/enkia/tokyo-night-vscode-theme

    foreground #a9b1d6
    background #1a1b26

# Black
    color0 #414868
    color8 #414868

# Red
    color1 #f7768e
    color9 #f7768e

# Green
    color2  #73daca
    color10 #73daca

# Yellow
    color3  #e0af68
    color11 #e0af68

# Blue
    color4  #7aa2f7
    color12 #7aa2f7

# Magenta
    color5  #bb9af7
    color13 #bb9af7

# Cyan
    color6  #7dcfff
    color14 #7dcfff

# White
    color7  #c0caf5
    color15 #c0caf5

# Cursor
    cursor #c0caf5
    cursor_text_color #1a1b26

# Selection highlight
    selection_foreground none
    selection_background #28344a

# The color for highlighting URLs on mouse-over
    url_color #9ece6a

# Window borders
    active_border_color #3d59a1
    inactive_border_color #101014
    bell_border_color #e0af68

# Tab bar
    tab_bar_style fade
    tab_fade 1
    active_tab_foreground   #3d59a1
    active_tab_background   #16161e
    active_tab_font_style   bold
    inactive_tab_foreground #787c99
    inactive_tab_background #16161e
    inactive_tab_font_style bold
    tab_bar_background #101014

# Close window confirmation 
    confirm_os_window_close 0

# Padding
    window_margin_width 12

# Opacity
    background_opacity 0.95

# Font
    font_family      Iosevka Nerd Font
    font_size        13.0

# Title bar
    macos_titlebar_color #16161e

  # Storm
  # background #24283b
  # cursor_text_color #24283b
  # active_tab_background   #1f2335
  # inactive_tab_background #1f2335
  # macos_titlebar_color #1f2335
  '';

  xdg.configFile."/home/john1917/.config/kitty/kitty.kanagawa.conf".text = ''
  ## name: Kanagawa
## license: MIT
## author: Tommaso Laurenzi
## upstream: https://github.com/rebelot/kanagawa.nvim/


background #1F1F28
foreground #DCD7BA
selection_background #2D4F67
selection_foreground #C8C093
url_color #72A7BC
cursor #C8C093

# Tabs
active_tab_background #1F1F28
active_tab_foreground #C8C093
inactive_tab_background  #1F1F28
inactive_tab_foreground #727169
#tab_bar_background #15161E

# normal
color0 #16161D
color1 #C34043
color2 #76946A
color3 #C0A36E
color4 #7E9CD8
color5 #957FB8
color6 #6A9589
color7 #C8C093

# bright
color8  #727169
color9  #E82424
color10 #98BB6C
color11 #E6C384
color12 #7FB4CA
color13 #938AA9
color14 #7AA89F
color15 #DCD7BA


# extended colors
color16 #FFA066
color17 #FF5D62

# Font
    font_family      Iosevka Nerd Font
    font_size      13.0

# Close window confirmation 
    confirm_os_window_close 0

# Padding
    window_margin_width 12

# Opacity
    background_opacity 0.95
  '';

 xdg.configFile."/home/john1917/.config/kitty/kitty.gruvbox.conf".text = ''
background #1d2021
foreground #ebdbb2
selection_background #3c3836
selection_foreground #C8C093
url_color #8ec07c
cursor #C8C093

# normal
color0 #282828
color1 #cc241d
color2 #98971a
color3 #d79921
color4 #458588
color5 #b16286
color6 #689d6a
color7 #a89984

# bright
color8  #3c3836
color9  #fb4934
color10 #b8bb26
color11 #fabd2f
color12 #83a598
color13 #d3869b
color14 #8ec07c
color15 #ebdbb2


# extended colors
color16 #d65d0e

# Font
    font_family      Iosevka Nerd Font
    font_size      13.0

# Close window confirmation 
    confirm_os_window_close 0

# Padding
    window_margin_width 12

# Opacity
    background_opacity 0.95
  '';

 xdg.configFile."/home/john1917/.config/kitty/kitty.decayce.conf".text = ''
background #0d0f18
foreground #a5b6cf
selection_background #242942
selection_foreground #a5b6cf
url_color #95d3af
cursor #a5b6cf

# normal
color0 #1c1e27
color1 #e26c7c
color2 #95d3af
color3 #f1d8af
color4 #8baff1
color5 #c79bf0
color6 #98d3ee
color7 #d0d3d8

# bright
color8  #151720
color9  #dd6777
color10 #90caaa
color11 #ecd3a0
color12 #86aaec
color13 #c296eb
color14 #93cee9
color15 #cbced3

# Font
    font_family      Iosevka Nerd Font
    font_size      13.0

# Close window confirmation 
    confirm_os_window_close 0

# Padding
    window_margin_width 12

# Opacity
    background_opacity 0.95
  '';

 xdg.configFile."/home/john1917/.config/kitty/kitty.conf".text = ''
background #141b1e
foreground #dadada
selection_background #232a2d
selection_foreground #dadada
url_color #96d988
cursor #dadada

# normal
color0 #232a2d
color1 #e57474
color2 #8ccf7e
color3 #e5c76b
color4 #67b0e8
color5 #c47fd5
color6 #6cbfbf
color7 #b3b9b8

# bright
color8  #2d3437
color9  #ef7f74
color10 #96d988
color11 #f4d67a
color12 #71baf2
color13 #ce89df
color14 #67cbe7
color15 #bdc3c2

# Font
    font_family      Iosevka Nerd Font
    font_size      13.0

# Close window confirmation 
    confirm_os_window_close 0

# Padding
    window_margin_width 12

# Opacity
    background_opacity 0.95
  '';
}
