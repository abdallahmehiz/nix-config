
{ pkgs, ... }: {
  home.packages = with pkgs; [
    pcmanfm-qt
  ];
  qt = {
    enable = true;
    platformTheme.name = "gtk";
    style = {
      package = pkgs.libsForQt5.breeze-gtk;
      name = "gtk3";
    };
  };
}
