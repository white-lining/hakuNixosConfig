{ pkgs, ... }:
{
  plugins =
  {

    # Floating command line
    noice.enable = true;

    # CSS colors
    highlight-colors.enable = true;

    # Icons
    web-devicons.enable = true;

    # Comments that are highlighted
    todo-comments.enable = true;

    # Smoother scroll down and up
    neoscroll =
    {
      enable = true;
      settings =
      {
        easing_function = "quadratic";
        hide_cursor = false;
      };
    };
    
  };
}
