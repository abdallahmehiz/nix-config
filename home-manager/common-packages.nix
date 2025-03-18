{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop apps
    chromium
    firefox
    gimp-with-plugins
    handbrake
    inkscape
    inputs.zen-browser.packages.${pkgs.system}.default
    insomnia
    libreoffice
    libsForQt5.gwenview
    libsForQt5.dolphin
    netlogo
    networkmanagerapplet
    pavucontrol
    qbittorrent
    telegram-desktop
    thunderbird
    ventoy-full
    vesktop
    vscode

    # Thunar stuff
    ffmpegthumbnailer
    file-roller
    samba
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-media-tags-plugin
    xfce.thunar-volman
    xfce.tumbler

    # CLI utils
    bat
    brightnessctl
    btop
    cliphist
    feh
    fzf
    gdu
    gh
    gtk3
    imagemagick
    mediainfo
    pamixer
    qrencode
    tree
    wl-clipboard
    wrk
    yt-dlp
    zathura

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    nixfmt-rfc-style
    nix-prefetch-scripts
    pcmanfm-qt

    # CLI games?
    asciiquarium
    bonsai
    cmatrix
    cowsay
    fastfetch
    fortune
    hollywood
    mesa-demos
    pipes
    sl
  ];
}
