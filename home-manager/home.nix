{ config, pkgs, lib, ... }:

{ 
  home = { 
  username = "john1917";
  homeDirectory = "/home/john1917";
  stateVersion = "22.11";
  packages = with pkgs; [];
  file = {};
  sessionVariables = {};
  };
  programs.home-manager.enable = true;

  # import dots
  imports = [
      ./modules/waybar/waybar.nix
      ./modules/hyprland/hyprland.nix
      ./modules/foot/foot.nix
      ./modules/spotifyd/spotifyd.nix
      ./modules/dunst/dunst.nix
      ./modules/zathura/zathura.nix
      ./modules/swaylock/swaylock.nix
      ./modules/spotify-tui/spotify-tui.nix
      ./modules/rofi/rofi.nix
      ./modules/hyprland/hyprscripts.nix
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
