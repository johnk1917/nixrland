{ config, pkgs, lib, inputs, spicetify-nix, ... }:
let
 spicePkgs = inputs.spicetify-nix.packages.${pkgs.system}.default;  
in
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
          inputs.spicetify-nix.homeManagerModule
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

      # Configure Spicetify 
      programs.spicetify = {
          enable = true;
          # colorScheme = "mocha";

           customColorScheme = {
            button = "364A82";
            sidebar = "16161e";
            player = "16161e";
            main = "1a1b26";
            button-active = "7aa2f7";
            text = "c0caf5";
            subtext = "9aa5ce";
            button-text = "8c4351";
            card = "364A82";
            shadow = "364A82";
            selected-row = "565f89";
            sub-button = "8c4351";
            button-disabled = "364A82";
            sidebar-button = "8c4351";
            play-button = "8c4351";
            tab-active = "7aa2f7";
            notification = "8f5e15";
            notification-error = "8c4351";
            playback-bar = "8c4351";
            misc = "7dcfff";
          }; 
          enabledExtensions = with spicePkgs.extensions; [
            fullAppDisplay
            shuffle # shuffle+ (special characters are sanitized out of ext names)
            hidePodcasts
          ];
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
