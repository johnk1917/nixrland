{ config, pkgs, ... }: {
xdg.configFile."/home/john1917/.config/spotifyd/spotifyd.conf".text = ''
  [global]
  # Your Spotify account name.
  username = "johnfkennedy04@gmail.com"

  # Your Spotify account password.
  password = "Jfk03232004"

  # backend
  backend = "pulseaudio"
'';
}
