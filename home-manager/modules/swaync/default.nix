{
  home.file.".config/swaync/images".source = ./images;
  home.file.".config/swaync/icons".source = ./icons;
  services.swaync = {
    enable = true;
    style = ./style.css;
    settings = {
      positionX = "right";
      positionY = "top";
      layer = "overlay";
      control-center-layer = "top";
      layer-shell = true;
      cssPriority = "application";
      control-center-margin-top = 5;
      control-center-margin-bottom = 0;
      control-center-margin-right = 0;
      control-center-margin-left = 0;
      notification-2fa-action = true;
      notification-inline-replies = false;
      notification-icon-size = 30;
      notification-body-image-height = 100;
      notification-body-image-width = 200;
      timeout = 6;
      timeout-low = 3;
      timeout-critical = 0;
      fit-to-screen = false;
      control-center-width = 350;
      control-center-height = 1000;
      notification-window-width = 400;
      keyboard-shortcuts = true;
      image-visibility = "when available";
      transition-time = 200;
      hide-on-clear = false;
      hide-on-action = true;
      script-fail-notify = true;
      widgets = [
        "dnd"
        "buttons-grid"
        "mpris"
        "volume"
        "backlight"
        "title"
        "notifications"
      ];
      widget-config = {
        title = {
          text = "Notifications";
          clear-all-button = true;
          button-text = "Clear";
        };
        dnd = {
          text = "Do Not Disturb";
        };
        label = {
          max-lines = 1;
          text = "Notification";
        };
        mpris = {
          image-size = 60;
          image-radius = 0;
        };
        volume = {
          label = "󰕾";
        };
        backlight = {
          label = "󰃟";
        };
        buttons-grid = {
          actions = [
            {
              label = "󰐥";
              command = "systemctl poweroff";
            }
            {
              label = "󰜉";
              command = "systemctl reboot";
            }
            {
              label = "󰌾";
              command = "~/.config/hypr/scripts/LockScreen.sh";
            }
            {
              label = "󰍃";
              command = "hyprctl dispatch exit";
            }
            {
              label = "󰕾";
              command = "pactl set-sink-mute @DEFAULT_SINK@ toggle";
            }
            {
              label = "󰍬";
              command = "pactl set-source-mute @DEFAULT_SOURCE@ toggle";
            }
          ];
        };
      };
    };
  };
}
