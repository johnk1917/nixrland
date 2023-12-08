{ config, pkgs, ... }: 

let 
  wifiscript = import ./wifiscript.nix { inherit pkgs; };
in
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Add packages to NixOS here
  environment.systemPackages = with pkgs; [
     wget
     gcc9
     zig
     cl 
     spotify-tui
     spotifyd
     playerctl
     cava
     llvmPackages_9.clangUseLLVM
     neovim
     any-nix-shell
     krita
     ix
     swaylock-effects
     river
     obs-studio
     element-desktop
     obsidian
     osu-lazer
     lunar-client
     nitch
     htop
     killall
     cinnamon.nemo
     haskellPackages.libfuse3
     appimage-run
     pavucontrol
     gtk3
     autotiling
     zathura
     grim
     slurp
     wl-clipboard
     alacritty
     fastfetch
     lf
     spotify
     yazi
     ranger
     xdragon
     discord
     git
     gnumake
     ueberzug
     lsix
     python3
     jdk17
     libreoffice
     brightnessctl
     swww
     swaybg
     i3lock-color
     light
     pamixer
     foot
     kitty
     rofi-wayland
     dunst
     eza
     mpv
     ani-cli
     fzf
     libnotify 
     xdg-user-dirs
     xdg-desktop-portal-hyprland
     maim
     viewnior
     lutgen
     picom
     acpi
     texlive.combined.scheme-full
     wifiscript
  ];
}
