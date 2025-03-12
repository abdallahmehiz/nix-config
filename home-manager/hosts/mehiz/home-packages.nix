{ pkgs, ... }: {

  home.packages = with pkgs; [
    android-studio
    ente-auth
    jellyfin-media-player
    #jetbrains.datagrip
    #jetbrains.idea-ultimate
    #jetbrains.goland
    #jetbrains.pycharm-professional
    #jetbrains.rider
    #jetbrains.rust-rover
    #jetbrains.webstorm
    #jetbrains-toolbox
    #losslesscut-bin
    #obs-studio
    #postman
 
    #python312Packages.pyftpdlib
    #jdk17
    #rustup
    #texliveFull
    #wrk
  ];
}
