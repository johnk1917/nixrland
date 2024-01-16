# John1917 NixOS Config

{ config, pkgs, ... }:
 
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/packages.nix
    ];

  # System version
  system.stateVersion = "23.05";

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Enable gnome polkit 
  systemd = {
  user.services.polkit-gnome-authentication-agent-1 = {
    description = "polkit-gnome-authentication-agent-1";
    wantedBy = [ "graphical-session.target" ];
    wants = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];
    serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
        Restart = "on-failure";
        RestartSec = 1;
        TimeoutStopSec = 10;
      };
    };
  };

  # Enable Swap 
  swapDevices = [ {
      device = "/var/lib/swapfile";
      size = 5*1024;
  } ];
  
  # OBS Virtual Camera 
  boot.extraModulePackages = with config.boot.kernelPackages; [
    v4l2loopback
  ];
  boot.extraModprobeConfig = ''
    options v4l2loopback video_nr=9 card_label=OBS exclusive_caps=1
  '';
  security.polkit.enable = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;
  
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

  # Environment Variables for NixOS 
  environment.sessionVariables = rec {
    terminal1 = "footclient";
    EDITOR = "nvim";
  };

  # XDG portal
  xdg.portal = { 
    enable = true; 
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ]; 
  };

  # Enable Hyprland + Other WMs 
  programs.hyprland.enable = true;

  services.xserver.windowManager.dwm = {
  enable = true;
  package = pkgs.dwm.overrideAttrs {
     src = ./hm-modules/suckless/suckless/dwm;
      nativeBuildInputs = with pkgs; [ #writing once works for both currently, sort of bug and feature
       xorg.libX11.dev
        xorg.libXft
        imlib2
        xorg.libXinerama
        ];
      };
   };
  
  # Enable Doas and Disable sudo
  security.doas.enable = true;
  security.sudo.enable = false;
  # Configure doas
  security.doas.extraRules = [{
  users = [ "john1917" ];
  keepEnv = true;
  persist = true;  
  }];
  
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

  # Configure Keymap & Display Manager settings
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
    displayManager = {
      defaultSession = "hyprland";
      lightdm = {
        enable = true;
        background = ./wallpapers/ledge_kanagawa.png;
        greeters = {
          slick.enable = true;
        };
      };
    };
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Swaylock
  security.pam.services.swaylock.fprintAuth = false;

  # Set the default user shell 
  users.defaultUserShell = pkgs.zsh;

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
        typeset -gA ZSH_HIGHLIGHT_STYLES
        ${pkgs.any-nix-shell}/bin/any-nix-shell zsh --info-right | source /dev/stdin
        ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue,underline
        ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,underline
        ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue
      '';
  };

  # Enable Steam 
  programs.steam = {
  enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedica   ted Server
  };

  # Override Aliases
  environment.shellAliases = {
    ls = "eza -l -x --icons --git --group-directories-first";
    rebuild-nix = "sudo nixos-rebuild switch";
    rebuild-hm = "home-manager switch";
    update-nixos = "sudo nix flake update /etc/nixos && sudo nixos-rebuild switch";
  };

  # Enable Starship  
  programs.starship = {
    enable = true;
    # Configuration written to ~/.config/starship.toml
    settings = {
      add_newline = true;
      character = {
         success_symbol = "[󰊠   ](bold blue)";
         error_symbol = "[󰊠   ](bold red)";
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
}
