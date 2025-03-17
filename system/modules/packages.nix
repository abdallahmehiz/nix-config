{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    base16-schemes
    bun
    busybox
    dmidecode
    inetutils
    file
    ffmpeg
    gcc
    git
    git-credential-manager
    glib
    gnupg
    go
    gvfs
    htop
    jq
    libcap
    libcxx
    libpng
    libsecret
    libuuid
    lua
    luarocks
    mtpfs
    neovim
    nixd
    nh
    nodejs
    ntfs3g
    pciutils
    posy-cursors
    python3Full
    rclone
    schedtool
    typst
    unrar
    unzip
    usbutils
    util-linux
    vim
    wget
    zip
  ];
}
