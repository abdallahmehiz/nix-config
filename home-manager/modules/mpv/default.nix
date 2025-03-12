{ pkgs, config, ... }:
{
  programs.mpv = {
    enable = true;
    config = {
      save-position-on-quit = "yes";
      keep-open = "always";
      osc = "no";
      screenshot-format = "png";
      screenshot-template = "~/Pictures/MPV/%F-%P-%02n";
      slang = [ "enm" "jpn" "eng" ];
      alang = [ "jpn" "eng" ];
      sub-auto = "fuzzy";
      volume = 35;
      cover-art-auto = "all";
      audio-display = "embedded-first";
      sub-fonts-dir = "~/.config/mpv/fonts";
    };
    scripts = with pkgs.mpvScripts; [
      modernx
      mpv-discord
    ];
  };
  home.packages = with pkgs; [
    jellyfin-mpv-shim
  ];
}