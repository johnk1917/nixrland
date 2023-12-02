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

      colors = {
        alpha="0.95";
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
        };

      };
    };
 }
