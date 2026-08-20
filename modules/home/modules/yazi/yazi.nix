{ pkgs, ... }:
{
  programs.yazi = {
    enable = true;
    settings = {
      mgr = {
        show_hidden = true;
      };
    };

    shellWrapperName = "y";
  };

  services.udiskie = {
    enable = true;
    settings = {
      file_manager = "";
      opener = {
        edit = [
          { run = "nvim \"$@\""; block = true; desc = "Neovim"; }
        ];
      };
    };
  };
}
