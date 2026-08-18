{ pkgs, config, ... }:
{
  services.xserver = {
    enable = true;

    displayManager.lightdm = {
      enable = true;
      background = "/home/hakuren/hakurenNixosConfig/resources/nord_valley.png";
      greeters.slick = {
        enable = true;

        font = {
          name = "FiraCode Nerd Font";
          package = pkgs.nerd-fonts.fira-code;
        };

        iconTheme = {
          name = "Papirus";
          package = pkgs.papirus-icon-theme;
        };
      };
    };
  };
}
