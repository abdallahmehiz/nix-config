{ cursor, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    xwayland.enable = true;
    settings = {
      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,xcb"
        "XDG_SCREENSHOTS_DIR,$HOME/pictures/screenshots"
      ];

      monitor = [
        "HDMI-A-1,1920x1080@60,0x0,1"
        "DP-1,1366x768@60,1920x0,1"
      ];
      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$fileManager" = "thunar";
      "$menu" = "wofi";

      exec-once = [
        "waybar"
        "hyprsunset"
        "hyprctl setcursor \"${cursor}\" 24"
        "pypr"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 10;
        gaps_workspaces = 0;

        border_size = 1;

        "col.active_border" = "0xffdbdbdb";
        "col.inactive_border" = "0xff666666";

        resize_on_border = true;
        hover_icon_on_border = true;

        allow_tearing = false;
        layout = "dwindle";
      };

      decoration = {
        rounding = 12;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

        shadow = {
          enabled = false;
        };

        blur = {
          enabled = true;
        };
      };

      animations = {
        enabled = true;
        first_launch_animation = true;
      };

      input = {
        kb_layout = "us,ara,fr";
        kb_options = "grp:alt_shift_toggle";
        numlock_by_default = true;
        repeat_rate = 25;
        repeat_delay = 600;
        
        follow_mouse = 1;
        sensitivity = -0.5;
        scroll_factor = 1;

        touchpad = {
          disable_while_typing = true;
          natural_scroll = false;
          scroll_factor = 1.0;
          middle_button_emulation = false;
        };
      };

      gestures = {
        workspace_swipe = true;
        workspace_swipe_invert = false;
        workspace_swipe_forever	= true;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
        disable_hyprland_logo = "false";
        disable_splash_rendering = "true";
        enable_swallow = "true";
        swallow_regex = "^(kitty)$";
      };

      windowrulev2 = [
        "bordercolor rgb(ff0000),xwayland:1"
        "float,class:com.intellij.idea.Main"
        "noinitialfocus,class:com.intellij.idea.Main"
      ];

      workspace = [
        "w[tv1], gapsout:0, gapsin:0"
        "f[1], gapsout:0, gapsin:0"
      ];
    };
  };
}
