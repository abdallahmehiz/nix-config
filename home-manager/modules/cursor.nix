{ pkgs, cursor, ... }:
{
  home.pointerCursor = {
    gtk.enable = true;
    name = cursor;
    package = pkgs.posy-cursors;
    size = 16;
  };

  gtk = {
    cursorTheme.name = cursor;
  };
}