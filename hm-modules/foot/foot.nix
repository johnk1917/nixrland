{config, pkgs, ... }: {
  programs.foot = {
    enable = true; 
    server = {
      enable = true;
    };
    settings = {
      main = {
        font = "Iosevka Nerd Font:Medium:size=13";
        font-bold = "Iosevka Nerd Font:Bold:size=13";
        font-italic = "Iosevka Nerd Font:Italic:size=13";
        font-bold-italic="Iosevka Nerd Font:Bold Italic:size=13";

        pad="12x12";
      };
      
      bell = {
        urgent = "yes";
        notify = "yes";
      };
        
     # Colors 
        colors = {
           alpha="0.95";
            # TokyoNight Colors  
            /* 
            background="0x1a1b26";
            foreground="0xa9b1d6";

            regular0="0x32344a";
            regular1="0xf7768e";
            regular2="0x9ece6a";
            regular3="0xe0af68";
            regular4="0x7aa2f7";
            regular5="0xbb9af7";
            regular6="0x7dcfff";
            regular7="0xa9b1d6";

            bright0="0x414868";
            bright1="0xf7768e";
            bright2="0x9ece6a";
            bright3="0xe0af68";
            bright4="0x7aa2f7";
            bright5="0xbb9af7";
            bright6="0x7dcfff";
            bright7="0xc0caf5"; 
          */

          # Kanagawa Colors 
          /*
           background="0x1f1f27";
           foreground="0xdcd7ba";
           
           regular0="0x090618";
           regular1="0xc34043";
           regular2="0x76946a";
           regular3="0xc0a36e";
           regular4="0x7e9cd8";
           regular5="0x958fb8";
           regular6="0x6a9589";
           regular7="0xc8c093";

           bright0="0x727169";
           bright1="0xe82424";
           bright2="0x98bb6c";
           bright3="0xe6c384";
           bright4="0x7fb4ca";
           bright5="0x938aa9";
           bright6="0x7aa89f";
           bright7="0xdcd7ba";
        */

        # Catppuccin Colors
        /*
           foreground="0xcdd6f4"; 
           background="0x181825";

           regular0="0x45475a"; 
           regular1="0xf38ba8";   
           regular2="0xa6e3a1";  
           regular3="0xf9e2af"; 
           regular4="0x89b4fa";
           regular5="0xf5c2e7";
           regular6="0x94e2d5";   
           regular7="0xbac2de";   

           bright0="0x585b70";    
           bright1="0xf38ba8";  
           bright2="0xa6e3a1";    
           bright3="0xf9e2af";    
           bright4="0x89b4fa";    
           bright5="0xf5c2e7";    
           bright6="0x94e2d5";    
           bright7="0xa6adc8";    
        */

         # Gruvbox Colors 
           background="0x1d2021";
           foreground="0xebdbb2";

           regular0="0x282828";
           regular1="0xcc241d";
           regular2="0x98971a";
           regular3="0xd79921";
           regular4="0x7daea3";
           regular5="0xb16286";
           regular6="0x689d6a";
           regular7="0xa89984";

           bright0="0x3c3836";
           bright1="0xfb4934";
           bright2="0xb8bb26";
           bright3="0xfabd2f";
           bright4="0x7daea3";
           bright5="0xd3869b";
           bright6="0x8ec07c";
           bright7="0xebdbb2";
        };
      };
    };
 }
