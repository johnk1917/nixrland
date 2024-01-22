{config, pkgs, ... }: {
  services.dunst = {
    package = pkgs.dunst; 
    enable = true;
    settings = {
      global = {
        font = "JetbrainsMono Nerd Font 10";
        markup = "full";
        format = "%s\n%b";
        sort = "no";
        indicate_hidden = "yes";
        alignment = "left";
        show_age_threshold = 60;
        word_wrap = "yes";
        ignore_newline = "no";
        stack_duplicates = "false";
        hide_duplicate_count = "yes";
        corner_radius=6;
        width = "280";
        height = "50-10";
        offset = "10x30";
        shrink = "no";
        idle_threshold = 120;
        monitor = 0;
        follow = "mouse";
        sticky_history = "yes";
        history_length = 20;
        show_indicators = "no";
        line_height = 4;
        separator_height = 4;
        padding = 20;
        horizontal_padding = 20;
        separator_color = "auto";
        startup_notification = "true";
        browser = "x-www-browser -new-tab";
        always_run_script = "true";
        title = "Dunst";
        class = "Dunst";
        icon_position = "left";
        min_icon_size = "32";
        max_icon_size = "56";
        frame_width = "3";
      };

      shortcuts = {
        close = "ctrl+shift+space";
        close_all = "ctrl+shift+space";
        history = "ctrl+grave";
        context = "ctrl+shift+period";
      };

      urgency-normal = {
        /* Tokyo Night */
        /* frame_color = "#7aa2f7";
        foreground = "#7aa2f7";
        background = "#1a1b26";
        timeout = 5; */

        /* Catppuccin */
        /*frame_color = "#89b4fa";
        foreground = "#89b4fa";
        background = "#181825";
        timeout = 5;*/
        
        /* Kanagawa */
        /* frame_color = "#7aa89f";
        foreground = "#7aa89f";
        background = "#1f1f28";
        timeout = 5; */

        /* Gruvbox */
        /* frame_color = "#8ec07c";
        foreground = "#8ec07c";
        background = "#1d2021"; */

        /* Oxocarbon */ 
        /* frame_color = "#3ddbd9";
        foreground = "#3ddbd8";
        background = "#161616"; */ 

        /* Decay */
        /* frame_color = "#8baff1"; 
        foreground = "#8baff1";
        background = "#0d0f18"; */

        /* Everblush */ 
        frame_color = "#67cbe7"; 
        foreground = "#67cbe7";
        background = "#141b1e"; 

      };

      urgency-critical = {
        /* Tokyo Night */
        /* frame_color = "#E06C75";
        foreground = "#E06C75";
        background = "#1a1b26";
        timeout = 5; */
        
        /* Catppuccin */
        /*frame_color = "#f38ba8";
        foreground = "#f38ba8";
        background = "#181825";
        timeout = 5;*/

        /* Kanagawa */
        /* frame_color = "#c34043";
        foreground = "#c34043";
        background = "#1f1f28"; */

        /* Gruvbox */
        /* frame_color = "#cc2d1d";
        foreground = "#cc2d1d";
        background = "#1d2021"; */

        /* Oxocarbon */ 
        /* frame_color = "#ee5396";
        foreground = "#ee5396";
        background = "#161616"; */

        /* Decay */
        /* frame_color = "#e26c7c"; 
        foreground = "#e26c7c";
        background = "#0d0f18"; */

        /* Everblush */ 
        frame_color = "#e57474";
        foreground = "#e57474";
        background = "#141b1e";
      };
    };
  };
}
