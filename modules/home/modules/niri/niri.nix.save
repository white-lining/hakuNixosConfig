{ pkgs, inputs, ... }:
{
  wayland.windowManager.niri = {
    enable = true;

    settings = {
      prefer-no-csd = {};

      spawn-at-startup =
      [
        "waybar"
      ];

      input =
      {
        keyboard =
        {
          repeat-delay = 200;
          repeat-rate = 35;
        };

        mouse =
        {
          accel-profile = "flat";
        };
      };

      binds = {

        "Control+0".show-hotkey-overlay = {};

        "Super+U".spawn = [ "kitty" ];
        "Super+Y".close-window = {};
        "Super+Space".spawn = [ "rofi" "-show" "drun" ];
        "Super+G".spawn-sh = [ "wlogout -b 1 -c 20 -r 20 -L 1700 -T 325 -B 325" ];
        "Super+P".toggle-overview = {};

        # Switch focus between columns and windows
        "Super+H".focus-column-left = {};
        "Super+L".focus-column-right = {};
        "Super+J".focus-window-down = {};
        "Super+K".focus-window-up = {};

        # Move to another workspace
        "Super+I".focus-workspace-up = {};
        "Super+O".focus-workspace-down = {};

        # Move the window in and out of a column
        "Super+N".consume-or-expel-window-left = {};
        "Super+M".consume-or-expel-window-right = {};

        # Cycle through the default proportions of a column
        "Super+C".switch-preset-column-width = {};

        # Display tab
        "Super+T".toggle-column-tabbed-display = {};

        # Maximizing windows
        "Super+F".maximize-column = {};
        "Alt+F".maximize-window-to-edges = {};

        # Control manually column width
        "Super+V".set-column-width = [ "-5%" ];
        "Super+B".set-column-width = [ "+5%" ];
        "Alt+V".set-window-height = [ "-5%" ];
        "Alt+B".set-window-height = [ "+5%" ];

        # Move a column to another workspace
        "Alt+I".move-column-to-workspace-up = {};
        "Alt+O".move-column-to-workspace-down = {};

        # Move windows and columns thorugh the workspace
        "Alt+H".move-column-left = {};
        "Alt+J".move-window-down = {};
        "Alt+K".move-window-up = {};
        "Alt+L".move-column-right = {};

        "Alt+S".spawn-sh = [ "grim -g \"$(slurp)\" - | wl-copy" ];
        "Alt+Q".quit = {};
        "Alt+U".toggle-window-rule-opacity = {};
      };

      layout =
      {
        gaps = 10;
        default-column-display = "normal";

        always-center-single-column = {};

        preset-column-widths._children = [
          { proportion = 0.35; }
          { proportion = 0.50; }
          { proportion = 0.66; }
          { proportion = 1.0; }
        ];

        default-column-width = { proportion = 0.5; };

        focus-ring = {
          off = {};
        };

        border =
        {
          on = {};
          width = 5;
          active-color = "#def9ff";
          inactive-color = "#4c566a";
        };

      };

      blur = {
        passes = 2;
        offset = 3.0;
        noise = 0.02;
        saturation = 1.0;
      };

      cursor = {
        hide-when-typing = {};
        hide-after-inactive-ms = 1000;
      };

      window-rule._children =
      [
        { match._props = { is-focused=false; }; background-effect = { blur = true; }; }
        { match._props = { is-active=true; }; opacity = 0.7; }
      ];

    };
  };
}
