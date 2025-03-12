{
  wayland.windowManager.hyprland.settings = {
    # Key bindings
    bind = [
      "$mainMod, Q, exec, kitty"
      "$mainMod SHIFT, S, exec, hyprshot -m region -o ~/Pictures/Screenshots/"
      ", Print, exec, hyprshot -m output --current -o ~/Pictures/Screenshots/"
      "$mainMod SHIFT, C, exec, hyprpicker --autocopy -f hex"
      "$mainMod, X, exec, cliphist list | wofi --dmenu | cliphist decode | wl-copy"
      "$mainMod SHIFT, Z, exec, pypr zoom"
      "$mainMod, Z, exec, pypr zoom ++0.25"
      "$mainMod, T, exec, pypr toggle term"
      "$mainMod, code:002e, exec, rofimoji"
      "$mainMod, F, fullscreen"
      "$mainMod, C, killactive"
      "$mainMod, M, exit"
      "$mainMod,f1, exec, hyprctl kill"
      "$mainMod, E, exec, thunar"
      "$mainMod, V, togglefloating"
      "$mainMod, R, exec, wofi --show=drun dmenu"
      "$mainMod, P, pseudo"
      "$mainMod, J, togglesplit"
      "$mainMod, left, movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, up, movefocus, u"
      "$mainMod, down, movefocus, d"
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"
      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"
      "$mainMod SHIFT, 7, movetoworkspace, 7"
      "$mainMod SHIFT, 8, movetoworkspace, 8"
      "$mainMod SHIFT, 9, movetoworkspace, 9"
      "$mainMod SHIFT, 0, movetoworkspace, 10"
    ];

    # Mouse bindings
    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];

    # Lid switch bindings
    bindlt = [
      ",switch:on:Lid Switch,exec,hyprlock"
      ",switch:on:Lid Switch,exec,sleep 1 && systemctl suspend"
    ];
  };
}
