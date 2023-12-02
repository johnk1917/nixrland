{config, pkgs, ... }: {
  programs.zathura = {
    enable = true;
    options = {
      ### Settings from original zathurarc ###
     pages-per-row = "1";
     scroll-page-aware = "true";
     scroll-full-overlap = "0.01";
     scroll-step = "100";
     font = "Source Code Pro 11";

      ### zathura-pywal ###
      # Allow recolor
     recolor = "true";

      # Don't allow original hue when recoloring
     recolor-keephue = "true";
  
     # Don't keep original image colors while recoloring
     recolor-reverse-video = "false";

    # Command line completion entries
     completion-fg = "#a9b1d6";
     completion-bg = "#1a1b26";

    # Command line completion group elements
     completion-group-fg = "#7aa2f7";
     completion-group-bg ="#1a1b26";

    # Current command line completion element
    completion-highlight-fg = "#1a1b26";
    completion-highlight-bg = "#a9b1d6";

    # Default foreground/background color
     default-bg = "rgba(26, 27, 38, 0.95)";

    # Input bar
     inputbar-fg = "#a9b1d6";
     inputbar-bg = "#1a1b26";

    # Notification
     notification-fg = "#a9b1d6";
     notification-bg = "#1a1b26";

    # Error notification
    notification-error-fg = "#a9b1d6";
    notification-error-bg = "#355B88";

    # Warning notification
    notification-warning-fg = "#a9b1d6";
    notification-warning-bg = "#355B88";

    # Status bar
     statusbar-fg = "#a9b1d6";
     statusbar-bg = "#1a1b26";

    # Highlighting parts of the document (e.g. show search results)
     highlight-color = "#7aa2f7";
     highlight-active-color = "#7aa2f7";

    # Represent light/dark colors in recoloring mode
     recolor-lightcolor = "rgba(0, 0, 0, 0)";
     recolor-darkcolor = "#a9b1d6";

    # 'Loading...' text
     render-loading-fg = "#a9b1d6";
     render-loading-bg = "#1a1b26";

    # Index mode
     index-fg = "#a9b1d6";
     index-bg = "#1a1b26";

    # Selected element in index mode
     index-active-fg = "#1a1b26";
     index-active-bg = "#a9b1d6";
    };
  };
  }
