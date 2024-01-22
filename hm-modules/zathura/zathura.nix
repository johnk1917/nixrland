{config, pkgs, ... }: {
  programs.zathura = {
    enable = true;
    options = {
      ### Settings from original zathurarc ###
     pages-per-row = "1";
     scroll-page-aware = "true";
     scroll-full-overlap = "0.01";
     scroll-step = "100";
     font = "JetbrainsMono Nerd Font 11";

      ### Tokyonight Colors ###
     /* # Allow recolor
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
     index-active-bg = "#c0caf5"; */
     

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

     # Kanagawa Theme
     /* # Allow recolor
      recolor = "true";

      # Don't allow original hue when recoloring
      recolor-keephue = "true";
  
      # Don't keep original image colors while recoloring
      recolor-reverse-video = "false";

      default-fg = "#dcd7ba";
      default-bg = "rgba(31, 31, 40, 0.95)";

      completion-bg	= "#1f1f28";
      completion-fg	= "#dcd7ba";
      completion-highlight-bg	= "#1f1f28";
      completion-highlight-fg	= "#dcd7ba";
      completion-group-bg	= "#1f1f28";
      completion-group-fg	= "#7e9dc8";

      statusbar-fg = "#dcd7ba";
      statusbar-bg = "#1f1f28";

      notification-bg	= "#1f1f28";
      notification-fg	= "#dcd7ba";
      notification-error-bg	= "#1f1f28";
      notification-error-fg	= "#e82424";
      notification-warning-bg	= "#1f1f28";
      notification-warning-fg	=  "#dcd7ba";

      inputbar-fg	= "#dcd7ba";
      inputbar-bg = "#1f1f28";

      recolor-lightcolor	= "rgba(0, 0, 0, 0)";
      recolor-darkcolor	= "#dcd7ba";

      index-fg	= "#dcd7ba";
      index-bg = "#1f1f28";
      index-active-fg	= "#dcd7ba";
      index-active-bg	= "#1f1f28";

      render-loading-bg	= "#1f1f28";
      render-loading-fg	= "#dcd7ba";

      highlight-color	= "#727169";
      highlight-fg = "#dcd7ba";
      highlight-active-color = "#dcd7ba"; */

     # Gruvbox Theme
      /* # Allow recolor
      recolor = "true";

      # Don't allow original hue when recoloring
      recolor-keephue = "true";
  
      # Don't keep original image colors while recoloring
      recolor-reverse-video = "false";

      default-fg = "#ebdbb2";
      default-bg = "rgba(29, 32, 33, 0.95)";

      completion-bg	= "#1d2021";
      completion-fg	= "#ebdbb2";
      completion-highlight-bg	= "#1d2021";
      completion-highlight-fg	= "#ebdbb2";
      completion-group-bg	= "#1d2021";
      completion-group-fg	= "#8ec07c";

      statusbar-fg = "#ebdbb2";
      statusbar-bg = "#1d2021";

      notification-bg	= "#1d2021";
      notification-fg	= "#ebdbb2";
      notification-error-bg	= "#1d2021";
      notification-error-fg	= "#cc241d";
      notification-warning-bg	= "#1d2021";
      notification-warning-fg	=  "#FAE3B0";

      inputbar-fg	= "#ebdbb2";
      inputbar-bg = "#1d2021";

      recolor-lightcolor	= "rgba(0, 0, 0, 0)";
      recolor-darkcolor	= "#ebdbb2";

      index-fg	= "#ebdbb2";
      index-bg = "#1d2021";
      index-active-fg	= "#ebdbb2";
      index-active-bg	= "#1d2021";

      render-loading-bg	= "#1d2021";
      render-loading-fg	= "#ebdbb2";

      highlight-color	= "#3c3836";
      highlight-fg = "#ebdbb2";
      highlight-active-color = "#ebdbb2"; */

    # Oxocarbon Theme
      /* # Allow recolor
      recolor = "true";

      # Don't allow original hue when recoloring
      recolor-keephue = "true";
  
      # Don't keep original image colors while recoloring
      recolor-reverse-video = "false";

      default-fg = "#f2f4f8";
      default-bg = "rgba(22, 22, 22, 0.95)";

      completion-bg	= "#161616";
      completion-fg	= "#f2f4f8";
      completion-highlight-bg	= "#161616";
      completion-highlight-fg	= "#f2f4f8";
      completion-group-bg	= "#161616";
      completion-group-fg	= "#3ddbd9";

      statusbar-fg = "#f2f4f8";
      statusbar-bg = "#161616";

      notification-bg	= "#161616";
      notification-fg	= "#f2f4f8";
      notification-error-bg	= "#161616";
      notification-error-fg	= "#ee5396";
      notification-warning-bg	= "#161616";
      notification-warning-fg	=  "#f2f4d8";

      inputbar-fg	= "#f2f4f8";
      inputbar-bg = "#161616";

      recolor-lightcolor	= "rgba(0, 0, 0, 0)";
      recolor-darkcolor	= "#f2f4f8";

      index-fg	= "#f2f4f8";
      index-bg = "#161616";
      index-active-fg	= "#f2f4f8";
      index-active-bg	= "#161616";

      render-loading-bg	= "#161616";
      render-loading-fg	= "#f2f4f8";

      highlight-color	= "#262626";
      highlight-fg = "#f2f4d8";
      highlight-active-color = "#f2f4f8"; */ 

    # Decayce Theme
      /* # Allow recolor
      recolor = "true";

      # Don't allow original hue when recoloring
      recolor-keephue = "true";
  
      # Don't keep original image colors while recoloring
      recolor-reverse-video = "false";

      default-fg = "#a5b6cf";
      default-bg = "rgba(13, 15, 24, 0.95)";

      completion-bg	= "#0d0f18";
      completion-fg	= "#a5b6cf";
      completion-highlight-bg	= "#0d0f18";
      completion-highlight-fg	= "#a5b6cf";
      completion-group-bg	= "#0d0f18";
      completion-group-fg	= "#86aaec";

      statusbar-fg = "#a5b6cf";
      statusbar-bg = "#0d0f18";

      notification-bg	= "#0d0f18";
      notification-fg	= "#a5b6cf";
      notification-error-bg	= "#0d0f18";
      notification-error-fg	= "#e26c7c";
      notification-warning-bg	= "#0d0f18";
      notification-warning-fg	=  "#f2f4d8";

      inputbar-fg	= "#a5b6cf";
      inputbar-bg = "#0d0f18";

      recolor-lightcolor	= "rgba(0, 0, 0, 0)";
      recolor-darkcolor	= "#a5b6cf";

      index-fg	= "#a5b6cf";
      index-bg = "#0d0f18";
      index-active-fg	= "#a5b6cf";
      index-active-bg	= "#0d0f18";

      render-loading-bg	= "#0d0f18";
      render-loading-fg	= "#a5b6cf";

      highlight-color	= "#242942";
      highlight-fg = "#a5b6cf";
      highlight-active-color = "#a5b6cf"; */

    # Everblush Theme
       # Allow recolor
      recolor = "true";

      # Don't allow original hue when recoloring
      recolor-keephue = "true";
  
      # Don't keep original image colors while recoloring
      recolor-reverse-video = "false";

      default-fg = "#dadada";
      default-bg = "rgba(20, 27, 30, 0.95)";

      completion-bg	= "#141b1e";
      completion-fg	= "#dadada";
      completion-highlight-bg	= "#141b1e";
      completion-highlight-fg	= "#dadada";
      completion-group-bg	= "#141b1e";
      completion-group-fg	= "#67cbe7";

      statusbar-fg = "#dadada";
      statusbar-bg = "#141b1e";

      notification-bg	= "#141b1e";
      notification-fg	= "#dadada";
      notification-error-bg	= "#141b1e";
      notification-error-fg	= "#e57474";
      notification-warning-bg	= "#141b1e";
      notification-warning-fg	=  "#dadada";

      inputbar-fg	= "#dadada";
      inputbar-bg = "#141b1e";

      recolor-lightcolor	= "rgba(0, 0, 0, 0)";
      recolor-darkcolor	= "#dadada";

      index-fg	= "#dadada";
      index-bg = "#141b1e";
      index-active-fg	= "#dadada";
      index-active-bg	= "#141b1e";

      render-loading-bg	= "#141b1e";
      render-loading-fg	= "#dadada";

      highlight-color	= "#2d3437";
      highlight-fg = "#dadada";
      highlight-active-color = "#dadada"; 
    };
  };
}
