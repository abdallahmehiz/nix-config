{pkgs, ...}:
{
  home.packages = with pkgs; [
    hyprshot
    hyprcursor
    hyprsunset
    pyprland
  ];
}
