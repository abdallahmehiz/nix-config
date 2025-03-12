{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    neovim
    git
  ];
}

