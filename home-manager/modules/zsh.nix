{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    autocd = true;
    enableVteIntegration = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    prezto = {
      enable = true;
      caseSensitive = false;
      editor = {
        keymap = "vi";
        promptContext = true;
      };
    };

    shellAliases = {
      sw = "nh os switch";
      st = "nh os test";
      upd = "nh os switch --update";
      hw = "nh home switch";
      ht = "nh home test";
      jellympv = "jellyfin-mpv-shim --config ~/.config/mpv/conf.json";

      r = "ranger";
      v = "nvim";
      vim = "nvim";
      se = "sudoedit";

      ssh = "kitten ssh";

      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gp = "git push";

      ".." = "cd ..";
    };

    history = {
      size = 100000;
      path = "${config.xdg.dataHome}/zsh/history";
      expireDuplicatesFirst = true;
    };
  };
}
