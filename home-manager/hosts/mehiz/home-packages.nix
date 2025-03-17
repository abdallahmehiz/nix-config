{ pkgs, ... }: {

  home.packages = with pkgs; [
    android-studio
    ente-auth
    figma-linux
    jellyfin-media-player
    jetbrains.datagrip
    jetbrains.idea-ultimate
    jetbrains.goland
    jetbrains.pycharm-professional
    jetbrains.rider
    jetbrains.rust-rover
    jetbrains.webstorm
    jetbrains-toolbox
    losslesscut-bin
    obs-studio
    postman
    steamguard-cli
  ];
}
