{ config, pkgs, ... }: {
xdg.configFile."/home/john1917/.config/spotifyd/spotifyd.conf".text = ''
  [global]
  # Your Spotify account name.
  username = "lolxd123"

  # Your Spotify account password.
  password = "lolxd123"

  # backend
  backend = "pulseaudio"
'';
}
