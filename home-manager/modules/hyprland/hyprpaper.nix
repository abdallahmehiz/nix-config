{
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = false;
      preload = [ "~/.wallpapers/evening-sky.jxl" ];

      wallpaper = [
        "HDMI-A-1,~/.wallpapers/evening-sky.jxl"
        "DP-1,~/.wallpapers/evening-sky.jxl"
      ];
    };
  };
}
