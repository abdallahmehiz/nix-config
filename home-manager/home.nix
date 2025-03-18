{
  homeStateVersion,
  user,
  hostname,
  ...
}:
{
  imports = [
    ./common-packages.nix
    ./modules
    ./hosts/${hostname}
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
    enableNixpkgsReleaseCheck = false;
  };

  programs.home-manager = {
    enable = true;
  };
}
