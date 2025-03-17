{ pkgs, ...}:
{
  programs.zed-editor = {
    enable = true;
    extensions = [
        "catpuccin"
    ];
    userSettings = {
      features = {
        copilot = true;
      };
      telemetry = {
        metrics = false;
      };
      theme = {
        mode = "system";
        light = "Catppuccin Latte";
        dark = "Catppuccin Mocha";
      };
      vim_mode = true;
      ui_font_size = 16;
      buffer_font_size = 16;
    };
  };
}