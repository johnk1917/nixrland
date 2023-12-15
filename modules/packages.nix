{ config, pkgs, ... }: 

let 
  wifiscript = import ./wifiscript.nix { inherit pkgs; };
in
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Allow electron
  nixpkgs.config.permittedInsecurePackages = [ 
	"electron-25.9.0"
  ];

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
     gnome.gnome-disk-utility
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
     fzf
     xfce.thunar
     haskellPackages.libfuse3
     polkit_gnome
     appimage-run
     pavucontrol
     gtk3
     autotiling
     zathura
     grim
     slurp
     wl-clipboard
     alacritty
     neofetch
     libsForQt5.qt5.qtgraphicaleffects
     lf
     spotify
     yazi
     ranger
     audacity
     xdragon
     discord
     betterdiscordctl
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
     light
     pamixer
     foot
     kitty
     rofi-wayland
     dunst
     eza
     mpv
     ani-cli
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
