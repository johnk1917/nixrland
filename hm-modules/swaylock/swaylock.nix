{config, pkgs, ... }: {
  programs.swaylock = {
    package = pkgs.swaylock-effects;
    enable = true;
    settings = {
      font-size="45";
      timestr="%H:%M";
      datestr="%a, %d %b";
      fade-in="0";
      screenshots=true;
      clock=true;
      daemonize=true;
      ignore-empty-password=true;
      indicator-idle-visible=true;
      effect-blur="7x5";
      indicator-radius="150";
      indicator-thickness="10";
      /* Gruvbox Colors */
      /* text-wrong-color="FFFFFFFF";
      text-ver-color="FFFFFFFF";
      text-clear-color="FFFFFFFF";
      key-hl-color="fabd2fFF";
      bs-hl-color="fb4934FF";
      inside-color="2828287F";
      inside-clear-color="2828287F";
      inside-wrong-color="2828287F";
      ring-clear-color="d65d0eFF";
      ring-wrong-color="cc241dff";
      ring-ver-color="b8bb26FF";
      inside-ver-color="2828287F";
      ring-color="689d6aff";
      line-clear-color="FFFFFF00";
      line-ver-color="FFFFFF00";
      line-wrong-color="FFFFFF00";
      separator-color="FFFFFF00";
      line-color="FFFFFF00";
      text-color="FFFFFFFF";
      font="JetBrainsMono Nerd Font"; */

      /* Kanagawa Colors */ 
      text-wrong-color="FFFFFFFF";
      text-ver-color="FFFFFFFF";
      text-clear-color="FFFFFFFF";
      key-hl-color="e6c384FF";
      bs-hl-color="fb4934FF";
      inside-color="25252f7F";
      inside-clear-color="25252f7F";
      inside-wrong-color="25252f7F";
      ring-clear-color="fb4934FF";
      ring-wrong-color="e82424ff";
      ring-ver-color="98bb6cFF";
      inside-ver-color="25252f7F";
      ring-color="7aa89fff";
      line-clear-color="FFFFFF00";
      line-ver-color="FFFFFF00";
      line-wrong-color="FFFFFF00";
      separator-color="FFFFFF00";
      line-color="FFFFFF00";
      text-color="FFFFFFFF";
      font="JetBrainsMono Nerd Font"; 
    };
  };
}
