{ config, pkgs, ... }: 

let 
  wifiscript = import ./modules/wifiscript.nix { inherit pkgs; };
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
     gradience
     playerctl
     cava
     doas
     neovim
     any-nix-shell
     krita
     swaylock-effects
     river
     obs-studio
     element-desktop
     obsidian
     osu-lazer
     steam
     steam-run
     lunar-client
     nitch
     htop
     killall
     fzf
     sxhkd
     cinnamon.nemo
     polkit_gnome
     appimage-run
     pavucontrol
     gtk3
     autotiling
     zathura
     grim
     slurp
     wl-clipboard
     neofetch
     lf
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
     feh 
     picom-jonaburg
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
     acpi
     texlive.combined.scheme-full
     wifiscript

     # Override Attrs
     (pkgs.dmenu.overrideAttrs  {
     src = ./hm-modules/suckless/suckless/dmenu;
     })

     (pkgs.dwmblocks.overrideAttrs {
      src = ./hm-modules/suckless/suckless/dwmblocks;
      })
  ];
}
