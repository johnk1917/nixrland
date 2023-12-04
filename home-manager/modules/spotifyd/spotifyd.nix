{ config, pkgs, ... }: {
xdg.configFile."/home/john1917/.config/spotifyd/spotifyd.conf".text = ''
  [global]
  # Your Spotify account name.
  username = "no@no.com"

  # Your Spotify account password.
  password = "nononono"

  # backend
  backend = "pulseaudio"
'';
}
