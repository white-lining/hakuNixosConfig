{ pkgs, config, ... }:
{
  services = {
    dbus.enable = true;

    udisks2.enable = true;

    gvfs.enable = true;
    tumbler.enable = true;

    xserver = {
      xkb.layout = "latam";
    };

    pipewire = {
      enable = true;
      pulse.enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
			jack.enable = true;
    };

    power-profiles-daemon.enable = true;

    flatpak.enable = true;

    displayManager = 
    {
      sddm = 
      {
        enable = true;
        wayland.enable = true;
      };
    };
  };

  console.useXkbConfig = true;
}
