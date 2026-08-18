{ pkgs, ... }:
{
  services.mpd = {
    enable = true;
    musicDirectory = "/home/hakuren/music";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "Sound Server"
      }
    '';
  };

  programs.ncmpcpp = {
    enable = true;
    mpdMusicDir = "/home/hakuren/music";
    settings = {
      mpd_host = "127.0.0.1";
      mpd_port = "6600";
    };
  };
}
