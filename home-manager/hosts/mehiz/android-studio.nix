{ pkgs, ...}:
{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.android_sdk.accept_license = true;

  home.packages = with pkgs; [
    android-studio
    android-tools
  ];
}