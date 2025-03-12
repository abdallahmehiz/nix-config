{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    mouse = true;
    prefix = "C-Space";
    plugins = with pkgs.tmuxPlugins; [
      catppuccin
      sensible
      vim-tmux-navigator
      yank
    ];
    extraConfig = "set-option -sa terminal-overrides \",xterm*:Tc\"";
  };
}