{ pkgs, ... }:
{
  wayland.windowManager = {
    enable = true;

    autostart_sh = ''
      waybar
    '';

    systemd.enable = true;

    settings = {

      # Default layout of the workspaces
      tagrule = [
        "id:1,layout_name:scroller"
        "id:2,layout_name:scroller"
        "id:3,layout_name:scroller"
        "id:4,layout_name:scroller"
        "id:5,layout_name:scroller"
        "id:6,layout_name:scroller"
        "id:7,layout_name:scroller"
        "id:8,layout_name:scroller"
        "id:9,layout_name:scroller"
      ];

      # Scroller layout settings
      scroller_default_proportion = 0.50;
      scroller_structs = 5;
      scroller_ignore_proportion_single = 0;
      scroller_default_propotion_single = 1;
      scroller_prefer_overspread = 1;
      scroller_focus_center = 0;
      scroller_proportion_preset = "0.70,0.40,0.30";

      # The layout that are used
      circle_layout = "scroller,dwindle";

      # Blur configurations
      blur = 1;
      blur_layer = 0;
      blur_optimized = 1;
      blur_params = {
        radius = 7;
        num_passes = 2;
        brightness = 1;
      };

      # Window opacity
      unfocused_opacity = 0.6;
      focused_opacity = 1;

      # Borders
      focuscolor = "0x5a8fb8ff";
      bordercolor = "0x4c566aff";
      border_radius = 2;

      borderpx = 5;
      gappih = 4; # Border between windows
      gappiv = 4;
      gappoh = 4;
      gappov = 4;

      # Jump mode 
      jump_mode_decorate_fg_color = "0x7ffaffff";
      jump_mode_decorate_bg_color = "0x4c566a05";
      jump_mode_decorate_focus_fg_color = "0xeec6f5ff";
      jump_mode_decorate_focus_bg_color = "0x2e3440ff";
      jump_mode_decorate_border_color = "0xeec6f5ff";
      jump_mode_decorate_border_width = 3;
      jump_mode_decorate_corner_radius = 2;
      jump_mode_decorate_font_desc = "fira-code bold 15";

      # Bindings
      bind =
      [
        "SUPER,u,spawn,kitty"
        "SUPER,space,spawn,rofi -show drun"
        "SUPER,y,killclient"

        "SUPER,h,focusdir,left"
        "SUPER,j,focusdir,down"
        "SUPER,k,focusdir,up"
        "SUPER,l,focusdir,right"

        "SUPER,p,switch_proportion_preset"

        "SUPER,i,viewtoleft"
        "SUPER,o,viewtoright"
        "ALT,i,tagtoleft"
        "ALT,o,tagtoright"

        "CTRL,j,togglejump"
        "CTRL,u,minimized"
        "CTRL,i,restore_minimized,1"
        "CTRL,f,togglefullscreen"
        "CTRL,h,scroller_stack,left"
        "CTRL,l,scroller_stack_right"
        "CTRL,o,switch_layout"
      ];

      animations = 1;
      layer_animations = 1;
      animation_type_open = "fade";
      animation_type_close = "fade";
      layer_animation_type_open = "fade";
      layer_animation_type_close = "fade";

      animation_fade_in = 1;
      animation_fade_out = 1;
      fadein_begin_opacity = 0.2;
      fadeout_begin_opacity = 0.4;

      animation_duration_open = 1200;
      animation_duration_close = 400;

      tag_animation_direction = 0;
      
    };
  
  };
}
