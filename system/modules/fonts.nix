{ pkgs, ... }:{
  fonts = {
    packages = with pkgs; [
      cm_unicode
      dejavu_fonts
      font-awesome
      ibm-plex
      inter
      material-design-icons
      montserrat
      nerd-fonts.jetbrains-mono
      nerd-fonts.meslo-lg
      noto-fonts
      noto-fonts-lgc-plus
      roboto
      twemoji-color-font
    ];
    fontconfig.defaultFonts = {
      serif = ["Computer Modern"];
      sansSerif = ["Inter"];
      monospace = ["JetBrainsMono"];
      emoji = ["Twemoji"];
    };
  };
}
