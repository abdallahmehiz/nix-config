{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    jdk17
    rustup
    texliveFull
  ];
}
