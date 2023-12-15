{ config, pkgs, lib, inputs,  ... }:
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

      # Imports
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
          ./hm-modules/neofetch/neofetch.nix
      ];

      # Enable GTK themes
       gtk = {
        enable = true;
         theme = {
             name = "Tokyonight-Dark-B";
             package = pkgs.tokyo-night-gtk; 
           # name = "Catppuccin-Mocha-Compact-Blue-Dark";
           # package = pkgs.catppuccin-gtk.override {
            # accents = ["blue"];
            # size = "compact";
            # tweaks = ["rimless"];
            # variant = "mocha";
           #};
        };
          iconTheme = {
            name  =  "Papirus-Dark";
            # package = pkgs.catppuccin-papirus-folders;
            package = pkgs.papirus-icon-theme.override { color = "blue"; };
          }; 
          cursorTheme = {
            name = "Bibata-Modern-Ice";
            package = pkgs.bibata-cursors;
            #package = pkgs.catppuccin-cursors.mochaLavender;
            #name = "Catppuccin-Mocha-Lavender-Cursors";
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
