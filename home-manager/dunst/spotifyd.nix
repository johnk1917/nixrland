{config, pkgs, ... }: {
  services.spotifyd = {
    enable = true;
    settings = {
      global = {
        username = "johnfkennedy04@gmail.com";
        password = "Jfk03232004";
        backend = "pulseaudio";
        device_name = "nix";
      };
    };
  };
}
