{ config, pkgs, lib, inputs, ... }:

{
     home = { 
      username = "john1917";
      homeDirectory = "/home/john1917";
      stateVersion = "23.11";
      packages = builtins.attrValues (import ./hm-modules/scripts/scripts.nix {inherit pkgs;});
      file = {};
      sessionVariables = {};
      };
      programs.home-manager.enable = true;

      # import dots
      imports = [
          ./hm-modules/waybar/waybar.nix
          ./hm-modules/hyprland/hyprland.nix
          ./hm-modules/foot/foot.nix
          ./hm-modules/kitty/kitty.nix
          ./hm-modules/spotifyd/spotifyd.nix
          ./hm-modules/spotify-tui/spotify-tui.nix
          ./hm-modules/dunst/dunst.nix
          ./hm-modules/zathura/zathura.nix
          ./hm-modules/swaylock/swaylock.nix
          ./hm-modules/rofi/rofi.nix
      ];

      # enabling GTK themes
       gtk = {
        enable = true;
         theme = {
           name = "TokyoNight";
           package = pkgs.tokyo-night-gtk; 
        };
          iconTheme = {
                name  =  "Papirus";
                package = pkgs.papirus-icon-theme.override { color = "blue"; };
          }; 
          cursorTheme = {
                name = "Bibata-Modern-Ice";
                package = pkgs.bibata-cursors;
                size = 16;
        };
      };

      # Mimetypes
      xdg.mimeApps.defaultApplications = {
        "application/pdf" = [ "zathura.desktop" ];
        "image/*" = [ "viewnior.desktop" ];
        "video/png" = [ "mpv.desktop" ];
        "video/jpg" = [ "mpv.desktop" ];
        "video/*" = [ "mpv.desktop" ];
        };      
}
