{ self, inputs, ... }:
{ # FIX: This is a module created for dendritic pattern with flake parts in mind, fix that.

  flake.nixosModules.mangoLotus = { pkgs, lib, ... }:
  {
    programs.mango = {
      enable = true;
      package = self.packages.${pkgs.stdenv.hostPlatform.system}.mangoLotus;
    };
  };

  perSystem = { pkgs, lib, self', ... }:
  {
    packages.mangoLotus = inputs.wrapper-modules.wrappers.mangowc.wrap
    {
      inherit pkgs;

      #systemd.enable = true;
      
      autostart_sh = ''
          noctalia-shell
        '';

      settings = {

        # Making every workspace have the scrolling layout by default
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

        # Scrolling layout config
        scroller_default_proportion = 0.35;
        scroller_structs = 5;
        scroller_ignore_proportion_single = 0;
        scroller_default_proportion_single = 1;
        scroller_prefer_overspread = 1;
        scroller_focus_center = 0;
        scroller_proportion_preset = "0.65,0.45,0.35";

        circle_layout = "scroller,dwindle";

        # Blur Configurations
        blur = 1;
        blur_layer = 0;
        blur_optimized = 1;
        blur_params = {
          radius = 5;
          num_passes = 2;
          brightness = 1;
        };

        # Window config -- opacity and shadows
        unfocused_opacity = 0.6;
        focused_opacity = 0.7;

        # Border color of the focused window
        focuscolor = "0x5a8fb8ff";
        # Border color of the unfocused windows
        bordercolor = "0x4c566aff";
        # Border radius of the windows
        border_radius = 2;

        # Window borders
        borderpx = 5;
        # Gap between windows
        gappih = 0;
        # Vertical inner gap
        gappiv = 5;
        # Horizontal outer gap between windows
        gappoh = 0;
        # Vertical outer gap
        gappov = 0;

        # Jump mode
        jump_label_decorate_fg_color = "0xc7faffff";
        jump_label_decorate_bg_color = "0x4c566a05";
        jump_label_decorate_focus_fg_color = "0xeec6f5ff";
        jump_label_decorate_focus_bg_color = "0x2e3440ff";
        jump_label_decorate_border_color = "0xeec6f5ff";
        jump_label_decorate_border_width = 3;
        jump_label_decorate_corner_radius = 1;
        jump_label_decorate_font_desc = "fira-code Bold 15";

        bind = [
          "SUPER,u,spawn,${lib.getExe pkgs.kitty}" #Spawn terminal
          "SUPER,y,killclient" # Kill window
          "SUPER,h,focusdir,left" # Focus the window on the left
          "SUPER,l,focusdir,right" # Focus window of thel right
          "SUPER,j,focusdir,down"
          "SUPER,k,focusdir,up"
          "SUPER,m,switch_proportion_preset" # switch the proportion of the window cyclying thorugh the configured ones
          "CTRL,i,viewtoleft" # switch to left workspace
          "CTRL,o,viewtoright" # switch to right workspace
          "SUPER,space,spawn,rofi -show drun" # Spawn launcher
          "CTRL,h,tagtoleft" # Move window to left workspace
          "CTRL,l,tagtoright" # Move window to right workspace
          "CTRL,0,togglejump" # Enter jumpmode
          "SUPER,1,minimized" # Minimize window
          "SUPER,2,restore_minimized,1" # restore minimized window
          "CTRL,f,togglefullscreen" 
          "CTRL,a,scroller_stack,left" # Move window though the stack in scroller mode to the left
          "CTRL,d,scroller_stack,right" # Move window though the stack in scroller mode to the right
          "CTRL,9,switch_layout"
        ];

        # Animations
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
  };
}
