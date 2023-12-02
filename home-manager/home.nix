{ config, pkgs, lib, spicetify-nix, ... }:

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
      ./waybar/waybar.nix
      ./hyprland/hyprland.nix
      ./foot/foot.nix
      ./spotifyd/spotifyd.nix
      ./dunst/dunst.nix
      ./zathura/zathura.nix
      ./swaylock/swaylock.nix
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
