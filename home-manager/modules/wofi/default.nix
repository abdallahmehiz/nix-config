{
  programs.wofi = {
    enable = true;
    settings = {
      allow_markup = true;
      allow_images = true;
      term = "kitty";
      no_actions=true;
    };
  };

  home.file.".config/wofi/style.css".source = ./style.css;
}
