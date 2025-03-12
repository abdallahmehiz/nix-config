{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop apps
    chromium
    dolphin
    filezilla
    firefox
    gimp-with-plugins
    gnome-system-monitor
    handbrake
    inkscape
    insomnia
    libreoffice
    librewolf
    libsForQt5.gwenview
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
    xfce.thunar-vcs-plugin
    xfce.thunar-volman
    xfce.tumbler

    # CLI utils
    bat
    brightnessctl
    btop
    cliphist
    ffmpeg
    fzf
    gcc
    gdu
    gh
    gnome-tweaks
    go
    gtk3
    htop
    imagemagick
    jq
    libnotify
    lua
    luarocks
    mediainfo
    nh
    nodejs
    pamixer
    python3Full
    qrencode
    rclone
    tree
    unrar
    unzip
    wget
    wl-clipboard
    wtype
    yt-dlp
    zathura
    zip

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    bemoji
    nerdfonts
    nixfmt-rfc-style
    nix-prefetch-scripts

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
