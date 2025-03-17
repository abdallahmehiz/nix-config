{pkgs, ...}:
{
  home.packages = with pkgs; [
    hyprcursor
    hypridle
    hyprlock
    hyprpicker
    hyprshot
    hyprsunset
    pyprland
  ];
}
