{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    busybox
    inetutils
    glib
    gnupg
    gvfs
    libpng
    libuuid
    mtpfs
    ntfs3g
    schedtool
    util-linux
  ];
}
