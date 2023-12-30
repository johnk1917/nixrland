{ config, pkgs, ... }: {
  xdg.configFile."/home/john1917/.config/spotify-tui/config.yml".text = ''
  theme:
   # TokyoNight
    # error_border: "243, 139, 168" # error dialog border is Red
    # error_text: "235, 160, 172" # error message text (e.g. "Spotify API reported error 404") is Maroon
    # hint: "255, 158, 100" # hint text in errors Yellow
    # playbar_background: "31, 31, 45" # background of progress bar "Crust"
    # playbar_progress: "122, 162, 247" # filled-in part of the progress bar Mantle
    # playbar_progress_text: "68, 157, 171" # song length and time played/left indicator in the progress bar Cyan
    # playbar_text: "166, 173, 200" # artist name in player pane is "Subtext 0"
    # inactive: "108, 112, 134" # borders of inactive panes "Overlay 0"
    # text: "169, 177, 214" # text in panes is "Text"
    # active: "203, 166, 247" # current playing song in list Mauve
    # banner: "122, 162, 247" # the "spotify-tui" banner on launch Blue
    # hovered: "173, 142, 230" # hovered pane border Blue
    # selected: "122, 162, 247" # a) selected pane border, b) hovered item in list, & c) track title in player Magenta
    # header: "169, 177, 214" # header text in panes (e.g. 'Title', 'Artist', etc.) Lavender

    # Gruvbox
    error_border: "204, 36, 29"
    error_text: "204, 36, 29"
    hint: "215, 153, 33"
    playbar_background: "40, 40, 40"
    playbar_progress: "104, 157, 106" 
    playbar_progress_text: "53, 73, 53"
    playbar_text: "142, 192, 124"
    inactive: "60, 56, 54"
    text: "168, 153, 132"
    active: "60, 56, 54"
    banner: "142, 192, 124"
    hovered: "152, 151, 26"
    selected: "142, 192, 124"
    header: "168, 153, 132"
'';
  xdg.configFile."/home/john1917/.config/spotify-tui/client.yml".text = ''
    ---
    client_id: ffd849db610241de9350c6341df7d8bc
    client_secret: 32939b03221e45809ba9ff0d051e0946
    device_id: 09121ecce3183fe57f379751b0c58ff5ff4f9218
    port: 8888
  '';
}
