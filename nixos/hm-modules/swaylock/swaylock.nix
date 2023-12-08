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
      text-wrong-color="FFFFFFFF";
      text-ver-color="FFFFFFFF";
      text-clear-color="FFFFFFFF";
      key-hl-color="e0af68FF";
      bs-hl-color="f7768eFF";
      inside-color="2B303B7F";
      inside-clear-color="2B303B7F";
      inside-wrong-color="2B303B7F";
      ring-clear-color="bb9af7FF";
      ring-wrong-color="f7768eff";
      ring-ver-color="7dcfffff";
      inside-ver-color="2B303B7F";
      ring-color="7AA2F7FF";
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
