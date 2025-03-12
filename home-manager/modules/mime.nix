{
  xdg.mimeApps.enable = true;
  xdg.mimeApps.defaultApplications = {
    # Directories
    "inode/directory" = ["thunar.desktop"];

    # Text files
    "text/plain" = ["nvim.desktop"];
    "text/markdown" = ["nvim.desktop"];
    "application/json" = ["nvim.desktop"];
    "application/xml" = ["nvim.desktop"];

    # Documents
    "application/pdf" = ["zathura.desktop"];
    "application/vnd.oasis.opendocument.text" = ["libreoffice-writer.desktop"];
    "application/vnd.oasis.opendocument.spreadsheet" = ["libreoffice-calc.desktop"];
    "application/vnd.oasis.opendocument.presentation" = ["libreoffice-impress.desktop"];
    "application/vnd.openxmlformats-officedocument.wordprocessingml.document" = ["libreoffice-writer.desktop"];
    "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" = ["libreoffice-calc.desktop"];
    "application/vnd.openxmlformats-officedocument.presentationml.presentation" = ["libreoffice-impress.desktop"];

    # Images
    "image/png" = ["gwenview.desktop"];
    "image/jpeg" = ["gwenview.desktop"];
    "image/gif" = ["gwenview.desktop"];
    "image/webp" = ["gwenview.desktop"];
    "image/svg+xml" = ["inkscape.desktop"];

    # Audio
    "audio/*" = ["mpv.desktop"];

    # Video
    "video/*" = ["mpv.desktop"];

    # Archives
    "application/zip" = ["file-roller.desktop"];
    "application/x-tar" = ["file-roller.desktop"];
    "application/x-7z-compressed" = ["file-roller.desktop"];
    "application/x-rar" = ["file-roller.desktop"];
    "application/gzip" = ["file-roller.desktop"];

    # Code files
    "text/x-shellscript" = ["nvim.desktop"];
    "text/x-python" = ["nvim.desktop"];
    "text/x-c" = ["nvim.desktop"];
    "text/x-c++" = ["nvim.desktop"];
    "text/x-java" = ["nvim.desktop"];
    "text/x-go" = ["nvim.desktop"];
    "text/x-rust" = ["nvim.desktop"];
    "text/x-sql" = ["nvim.desktop"];

    # Web & Networking
    "x-scheme-handler/http" = ["firefox.desktop"];
    "x-scheme-handler/https" = ["firefox.desktop"];
    "x-scheme-handler/about" = ["firefox.desktop"];
    "x-scheme-handler/ftp" = ["firefox.desktop"];
    "x-scheme-handler/mailto" = ["thunderbird.desktop"];
  };
}
