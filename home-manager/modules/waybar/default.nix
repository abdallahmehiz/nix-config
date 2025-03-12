{
  home.file.".config/waybar/volume".source = ./volume;
  home.file.".config/waybar/kblayout".source = ./kblayout;
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      mainBar = {
        spacing = 2;
        margin-left = 10;
        margin-right = 10;
        margin-top = 10;

        modules-left = [
          "custom/launcher"
          "hyprland/workspaces#pacman"
          "custom/seperator"
          "cpu"
          "custom/seperator"
          "memory"
          "custom/seperator"
          "network#speed"
        ];

        modules-center = [ "clock" ];

        modules-right = [
          "tray"
          "custom/seperator"
          "hyprland/language"
          "custom/seperator"
          "pulseaudio#microphone"
          "pulseaudio"
          "custom/seperator"
          # "bluetooth"
          # "custom/seperator"
          "network"
          "custom/seperator"
          "idle_inhibitor"
          "custom/seperator"
          "custom/swaync"
          "custom/seperator"
          "custom/power"
        ];

        "custom/seperator" = {
          format = "|";
        };

        "custom/launcher" = {
          format = "󱄅";
          on-click = "wofi --show drun";
        };

        "hyprland/workspaces" = {
          active-only = false;
          all-outputs = true;
          format = "{icon}";
          show-special = false;
          on-click = "activate";
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
          persistent-workspaces."*" = 5;
          format-icons = {
            active = "";
            default = "";
          };
        };

        # ROMAN Numerals Style
        "hyprland/workspaces#roman" = {
          active-only = false;
          all-outputs = true;
          format = "{icon}";
          show-special = false;
          on-click = "activate";
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
          persistent-workspaces."*" = 5;
          format-icons = {
            "1" = "I";
            "2" = "II";
            "3" = "III";
            "4" = "IV";
            "5" = "V";
            "6" = "VI";
            "7" = "VII";
            "8" = "VIII";
            "9" = "IX";
            "10" = "X";
          };
        };

        # PACMAN Style
        "hyprland/workspaces#pacman" = {
          active-only = false;
          all-outputs = true;
          format = "{icon}";
          on-click = "activate";
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
          show-special = false;
          persistent-workspaces."*" = 5;
          format-icons = {
            active = "<span font='12'>󰮯</span>";
            empty = "<span font='8'></span>";
            default = "󰊠";
          };
        };

        # Kanji / Japanese Style
        "hyprland/workspaces#kanji" = {
          disable-scroll = true;
          show-special = false;
          all-outputs = true;
          format = "{icon}";
          persistent-workspaces."*" = 5;
          format-icons = {
            "1" = "一";
            "2" = "二";
            "3" = "三";
            "4" = "四";
            "5" = "五";
            "6" = "六";
            "7" = "七";
            "8" = "八";
            "9" = "九";
            "10" = "十";
          };
        };

        # Spanish / Italian (Camilla) Style
        "hyprland/workspaces#cam" = {
          active-only = false;
          all-outputs = true;
          format = "{icon}";
          show-special = false;
          on-click = "activate";
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
          persistent-workspaces."*" = 5;
          format-icons = {
            "1" = "Uno";
            "2" = "Due";
            "3" = "Tre";
            "4" = "Quattro";
            "5" = "Cinque";
            "6" = "Sei";
            "7" = "Sette";
            "8" = "Otto";
            "9" = "Nove";
            "10" = "Dieci";
          };
        };

        # NUMBERS and ICONS Style
        "hyprland/workspaces#4" = {
          format = " {name} {icon} ";
          show-special = false;
          on-click = "activate";
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
          all-outputs = true;
          sort-by-number = true;
          format-icons = {
            "1" = " ";
            "2" = " ";
            "3" = " ";
            "4" = " ";
            "5" = " ";
            "6" = " ";
            "7" = "";
            "8" = " ";
            "9" = "";
            "10" = "10";
            focused = "";
            default = "";
          };
        };

        cpu = {
          format-alt = "{usage}%";
          interval = 1;
          format-alt-click = "click";
          format = "{icon0}{icon1}{icon2}{icon3} {usage:>2}%";
          format-icons = [
            "▁"
            "▂"
            "▃"
            "▄"
            "▅"
            "▆"
            "▇"
            "█"
          ];
          on-click-right = "gnome-system-monitor";
        };

        mpris = {
          interval = 10;
          format = "{player_icon} ";
          format-paused = "{status_icon} <i>{dynamic}</i>";
          on-click-middle = "playerctl play-pause";
          on-click = "playerctl previous";
          on-click-right = "playerctl next";
          scroll-step = 5.0;
          on-scroll-up = "$HOME/.config/waybar/volume --inc";
          on-scroll-down = "$HOME/.config/waybar/volume --dec";
          smooth-scrolling-threshold = 1;
          player-icons = {
            chromium = "";
            default = "";
            firefox = "";
            mpv = "";
            spotify = "";
            vlc = "󰕼";
          };
          status-icons = {
            paused = "󰐎";
            playing = "";
            stopped = "";
          };
          max-length = 30;
        };

        idle_inhibitor = {
          tooltip = true;
          tooltip-format-activated = "Caffinated";
          tooltip-format-deactivated = "Not Caffinated";
          format = "{icon}";
          format-icons = {
            activated = "󰅶";
            deactivated = "󰛊";
          };
        };

        "custom/power" = {
          format = "⏻ ";
          on-click = "wlogout";
          tooltip = true;
          tooltip-format = "Left Click: Logout Menu";
        };

        keyboard-state = {
          capslock = true;
          format = {
            numlock = "N {icon}";
            capslock = "󰪛 {icon}";
          };
          format-icons = {
            locked = "";
            unlocked = "";
          };
        };

        memory = {
          format = "MEM: {percentage}%";
          interval = 1;
          tooltip = true;
          tooltip-format = "{used}GB/{total}GB";
        };

        clock = {
          interval = 10;
          format-alt = " {:%I:%M %p}";
          format = " {:%A %d %B %Y | %H:%M }";
          tooltip-format = "<tt><small>{calendar}</small></tt>";
          calendar = {
            mode = "year";
            mode-mon-col = 3;
            weeks-pos = "right";
            on-scroll = 1;
            format = {
              months = "<span color='#ffead3'><b>{}</b></span>";
              days = "<span color='#ecc6d9'><b>{}</b></span>";
              weeks = "<span color='#99ffdd'><b>W{}</b></span>";
              weekdays = "<span color='#ffcc66'><b>{}</b></span>";
              today = "<span color='#ff6699'><b><u>{}</u></b></span>";
            };
          };
        };

        "hyprland/language" = {
          on-click = "$HOME/.config/waybar/kblayout";
        };

        pulseaudio = {
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} 󰂰 {volume}%";
          format-muted = "󰖁";
          format-icons = {
            headphone = "";
            hands-free = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = [
              ""
              ""
              "󰕾"
              ""
            ];
            ignored-sinks = [
              "Easy Effects Sink"
            ];
          };
          scroll-step = 1.0;
          on-click = "$HOME/.config/waybar/volume --toggle";
          on-click-right = "pavucontrol -t 3";
          on-scroll-up = "$HOME/.config/waybar/volume --inc";
          on-scroll-down = "$HOME/.config/waybar/volume --dec";
          tooltip-format = "{icon} {desc} | {volume}%";
          smooth-scrolling-threshold = 1;
        };
        "pulseaudio#1" = {
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} {volume}%";
          format-bluetooth-muted = "{icon}";
          format-muted = "󰸈";
          format-icons = {
            headphone = "";
            hands-free = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = [
              ""
              ""
              "󰕾"
              ""
            ];
          };
          on-click = "pamixer --toggle-mute";
          on-click-right = "pavucontrol -t 3";
          tooltip = true;
          tooltip-format = "{icon} {desc} | {volume}%";
        };

        "pulseaudio#microphone" = {
          format = "{format_source}";
          format-source = "󰍬 {volume}%";
          format-source-muted = "󰍭";
          on-click = "$HOME/.config/waybar/volume --toggle-mic";
          on-click-right = "pavucontrol -t 4";
          on-scroll-up = "$HOME/.config/waybar/volume --mic-inc";
          on-scroll-down = "$HOME/.config/waybar/volume --mic-dec";
          tooltip-format = "{source_desc} | {source_volume}%";
          scroll-step = 5;
        };

        tray = {
          icon-size = 20;
          spacing = 4;
        };

        # bluetooth = {
        #   format = "󰂯";
        #   format-off = "󰂰";
        #   format-connected = "󰂱 {device_alias}";
        #   format-connected-battery = "󰂱 {device_alias} {device_battery_percentage}%";
        #   tooltip-format = "{controller_alias}\t{controller_address}\n\n{num_connections} connected";
        #   tooltip-format-connected = "{controller_alias}\t{controller_address}\n\n{num_connections} connected\n\n{device_enumerate}";
        #   tooltip-format-enumerate-connected = "{device_alias}\t{device_address}";
        #   tooltip-format-enumerate-connected-battery = "{device_alias}\t{device_address}\t{device_battery_percentage}%";
        #   on-double-click = "blueman-manager";
        # };

        network = {
          format = "{ifname}";
          format-wifi = "{icon}";
          format-ethernet = "󰌘";
          format-disconnected = "󰌙";
          tooltip-format = "{ipaddr}  {bandwidthUpBits}  {bandwidthDownBits}";
          format-linked = "󰈁 {ifname} (No IP)";
          tooltip-format-wifi = "{essid} {icon} {signalStrength}%";
          tooltip-format-ethernet = "{ifname} 󰌘";
          tooltip-format-disconnected = "󰌙 Disconnected";
          max-length = 30;
          format-icons = [
            "󰤯"
            "󰤟"
            "󰤢"
            "󰤥"
            "󰤨"
          ];
          on-click-right = "nm-applet";
        };

        "network#speed" = {
          interval = 1;
          format = "{ifname}";
          format-wifi = " {bandwidthUpBytes} - {bandwidthDownBytes} ";
          format-ethernet = "{bandwidthUpBytes}/{bandwidthDownBytes}";
          format-disconnected = "󰌙";
          tooltip-format = "{ipaddr}";
          format-linked = "󰈁 {ifname} (No IP)";
          tooltip-format-wifi = "{essid} {icon} {signalStrength}%";
          tooltip-format-ethernet = "{ifname} 󰌘";
          tooltip-format-disconnected = "󰌙 Disconnected";
          format-icons = [
            "󰤯"
            "󰤟"
            "󰤢"
            "󰤥"
            "󰤨"
          ];
        };

        battery = {
          bat = "BAT0";
          interval = 60;
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon} {capacity}% ";
          format-icons = [
            "󰂎"
            "󰁺"
            "󰁻"
            "󰁼"
            "󰁽"
            "󰁾"
            "󰁿"
            "󰂀"
            "󰂁"
            "󰂂"
            "󰂄"
          ];
          max-length = 25;
        };

        wireplumber = {
          format = "{icon} {volume} %";
          format-muted = " Mute";
          on-click = "$HOME/.config/waybar/volume --toggle";
          on-click-right = "pavucontrol -t 3";
          on-scroll-up = "$HOME/.config/waybar/volume --inc";
          on-scroll-down = "$HOME/.config/waybar/volume --dec";
          format-icons = [
            "󰕿"
            "󰖀"
            "󰕾"
          ];
        };

        "custom/swaync" = {
          tooltip = true;
          tooltip-format = "Left Click: Launch Notification Center\nRight Click: Do not Disturb";
          format = "{} {icon} ";
          format-icons = {
            notification = "<span foreground='red'><sup></sup></span>";
            none = "";
            dnd-notification = "<span foreground='red'><sup></sup></span>";
            dnd-none = "";
            inhibited-notification = "<span foreground='red'><sup></sup></span>";
            inhibited-none = "";
            dnd-inhibited-notification = "<span foreground='red'><sup></sup></span>";
            dnd-inhibited-none = "";
          };
          return-type = "json";
          exec-if = "which swaync-client";
          exec = "swaync-client -swb";
          on-click = "sleep 0.1 && swaync-client -t -sw";
          on-click-right = "swaync-client -d -sw";
          escape = true;
        };
      };
    };
  };
}
