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
     completion-fg = "#c0caf5";
     completion-bg = "#1a1b26";

    # Command line completion group elements
     completion-group-fg = "#7aa2f7";
     completion-group-bg ="#1a1b26";

    # Current command line completion element
    completion-highlight-fg = "#1a1b26";
    completion-highlight-bg = "#c0caf5";

    # Default foreground/background color
     default-bg = "rgba(26, 27, 38, 0.95)";

    # Input bar
     inputbar-fg = "#c0caf5";
     inputbar-bg = "#1a1b26";

    # Notification
     notification-fg = "#c0caf5";
     notification-bg = "#1a1b26";

    # Error notification
    notification-error-fg = "#c0caf5";
    notification-error-bg = "#355B88";

    # Warning notification
    notification-warning-fg = "#c0caf5";
    notification-warning-bg = "#355B88";

    # Status bar
     statusbar-fg = "#c0caf5";
     statusbar-bg = "#1a1b26";

    # Highlighting parts of the document (e.g. show search results)
     highlight-color = "#7aa2f7";
     highlight-active-color = "#7aa2f7";

    # Represent light/dark colors in recoloring mode
     recolor-lightcolor = "rgba(0, 0, 0, 0)";
     recolor-darkcolor = "#c0caf5";

    # 'Loading...' text
     render-loading-fg = "#c0caf5";
     render-loading-bg = "#1a1b26";

    # Index mode
     index-fg = "#c0caf5";
     index-bg = "#1a1b26";

    # Selected element in index mode
     index-active-fg = "#1a1b26";
     index-active-bg = "#c0caf5";
     

     # Catppuccin Mocha Theme
    /*
      # Allow recolor
      recolor = "true";

      # Don't allow original hue when recoloring
      recolor-keephue = "true";
  
      # Don't keep original image colors while recoloring
      recolor-reverse-video = "false";

      default-fg = "#CDD6F4";
      default-bg = "rgba(24, 24, 37, 0.95)";

      completion-bg	= "#1e1e2e";
      completion-fg	= "#CDD6F4";
      completion-highlight-bg	= "#575268";
      completion-highlight-fg	= "#CDD6F4";
      completion-group-bg	= "#1e1e2e";
      completion-group-fg	= "#89B4FA";

      statusbar-fg = "#CDD6F4";
      statusbar-bg = "#1e1e2e";

      notification-bg	= "#1e1e2e";
      notification-fg	= "#CDD6F4";
      notification-error-bg	= "#1e1e2e";
      notification-error-fg	= "#F38BA8";
      notification-warning-bg	= "#1e1e2e";
      notification-warning-fg	=  "#FAE3B0";

      inputbar-fg	= "#CDD6F4";
      inputbar-bg = "#1e1e2e";

      recolor-lightcolor	= "rgba(0, 0, 0, 0)";
      recolor-darkcolor	= "#CDD6F4";

      index-fg	= "#CDD6F4";
      index-bg = "#181825";
      index-active-fg	= "#CDD6F4";
      index-active-bg	= "#1e1e2e";

      render-loading-bg	= "#181825";
      render-loading-fg	= "#CDD6F4";

      highlight-color	= "#575268";
      highlight-fg = "#F5C2E7";
      highlight-active-color = "#F5C2E7";
    */
    };
  };
  }
