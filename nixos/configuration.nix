# John1917 NixOS Config

{ config, pkgs, ... }:
 
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      <home-manager/nixos> 
    ];

  # System version
  system.stateVersion = "23.05";

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  # OBS Virtual Camera 
  boot.extraModulePackages = with config.boot.kernelPackages; [
    v4l2loopback
  ];
  boot.extraModprobeConfig = ''
    options v4l2loopback video_nr=9 card_label=OBS exclusive_caps=1
  '';
  security.polkit.enable = true;
  
  # Define hostname
  networking.hostName = "nixos"; 

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Ho_Chi_Minh";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # XDG portal
  xdg.portal = { 
  enable = true; 
  extraPortals = [ pkgs.xdg-desktop-portal-wlr ]; 
  };
  
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the Display Manager.
  services.xserver.displayManager.lightdm.greeters.slick.enable = true;
  services.xserver.displayManager.lightdm = {
    background = ./wallpapers/hashira2.png;
  };

  # Enable fonts 
  fonts.packages = with pkgs; [
        cantarell-fonts
        dejavu_fonts
        source-code-pro # Default monospace font in 3.32
        source-sans
        nerdfonts
        font-awesome_5
      ];

  # Enable Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ]; 

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

# Environment Variables for NixOS 
  environment.sessionVariables = rec {
    GTK_THEME = "TokyoNight";
    terminal1 = "footclient";
    EDITOR = "nvim";
  };

  # Enable Window Manager
  programs.hyprland.enable = true;

  # Enable Waybar
  programs.waybar.enable = true;

  # Swaylock
  security.pam.services.swaylock.fprintAuth = false;

  # Zsh configuration 
  programs.zsh = {
        enable = true;
        ohMyZsh.enable = true;
        ohMyZsh.plugins = [ "git" ];
        ohMyZsh.theme = "frisk";
        autosuggestions.enable = true;
        syntaxHighlighting.enable = true;
        interactiveShellInit = ''
        KITTY_SHELL_INTEGRATION="enabled"
        alias rebuild-nix="sudo nixos-rebuild switch"
        alias rebuild-hm="home-manager switch"
        alias lspt="killall spotifyd ; spotifyd ; spt"
        typeset -gA ZSH_HIGHLIGHT_STYLES
        ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue,underline
        ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,underline
        ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue
      '';
  };
  
  # Override Aliases
  environment.shellAliases.ls = "eza -l -x --icons --git --group-directories-first";
  environment.shellAliases.neofetch = "fastfetch";

  # Enable Starship  
  programs.starship = {
    enable = true;
    # Configuration written to ~/.config/starship.toml
    settings = {
      add_newline = true;

      character = {
         success_symbol = "[   ](bold blue)";
         error_symbol = "[   ](bold red)";
       };

      nix_shell = {
         disabled = false;
      };
       package.disabled = true;
    };
  };

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    #media-session.enable = true;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.john1917 = {
    isNormalUser = true;
    description = "John K";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
      librewolf
      chromium
      thunderbird
    ];
  };
  
  # Set the default user shell 
  users.defaultUserShell = pkgs.zsh;

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
     cava
     llvmPackages_9.clangUseLLVM
     neovim
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
     python3
     jdk17
     libreoffice
     zsh
     brightnessctl
     swww
     swaybg
     i3lock-color
     light
     pamixer
     foot
     kitty
     bemenu
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

     # Overrides & imports
     (waybar.overrideAttrs (oldAttrs: {mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];}))
  ];
}

