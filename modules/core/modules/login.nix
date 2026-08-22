{ pkgs, config, ... }:
{
  services = {
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
      theme = "sddm-chili-theme";
      extraPackages = with pkgs; [ 
        sddm-chili-theme
        kdePackages.qtsvg
        kdePackages.qtmultimedia
        kdePackages.qtvirtualkeyboard
        kdePackages.qt5compat
      ];
      autoNumlock = true;
      enableHidpi = true;
    };
  };
}
