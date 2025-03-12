{ pkgs, ... }:{
  fonts.packages = with pkgs; [
    material-design-icons
    nerdfonts
  ];
}
