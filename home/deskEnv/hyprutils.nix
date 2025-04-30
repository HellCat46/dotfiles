{configs, ...} :
{

  services.hypridle = {
    enable = true;
    settings = {
      general = {
        lock_cmd = "pidof hyprlock || hyprlock";
        before_sleep_cmd = "loginctl lock-session";
        after_sleep_cmd = "hyprctl dispatch dpms on";
      };

      listener = [
        {
          timeout = 300;
          on-timeout = "loginctl lock-session";
        }
        {
          timeout = 330;
          on-timeout = "hyprctl dispatch dpms off";
          on-resume = "hyprctl dispatch dpms on";
        }
        {
          timeout = 1200;
          on-timeout = "systemctl suspend";
        }
      ];
    };
  };

  services.hyprpaper = {
    enable = true;

    settings = {
      splash = false;

      preload = [ "~/.dotfiles/home/assets/Wallpaper.png" ];
      wallpaper = [ ",~/.dotfiles/home/assets/Wallpaper.png" ];
    };
  };


  programs.hyprlock = {
    enable = true;
    settings = let
      colors = import ./catppuccin.nix;
      accent = colors.mauve;
      accentAlpha = colors.mauve.alpha;
      font = "JetBrainsMono Nerd Font";
      in {
        general = {
          disable_loading_bar = true;
          hide_cursor = true;
        };

        background = [
          {
            monitor = "";
            path = "~/.dotfiles/home/assets/Background.png";
            blur_passes = 0;
            color = colors.base.rgb;
          }
        ];

        label = [
          {
            monitor = "";
            text = "Layout: $LAYOUT";
            color = colors.text.rgb;
            font_size = 25;
            font_family = font;
            position = "30, -30";
            halign = "left";
            valign = "top";
          }
          {
            monitor = "";
            text = "$TIME";
            color = colors.text.rgb;
            font_size = 90;
            font_family = font;
            position = "-30, 0";
            halign = "right";
            valign = "top";
          }
          {
            monitor = "";
            text = "cmd[update:43200000] date +\"%A, %d %B %Y\"";
            color = colors.text.rgb;
            font_size = 25;
            font_family = font;
            position = "-30, -150";
            halign = "right";
            valign = "top";
          }
        ];

        image = [
          {
            monitor = "";
            path = "$HOME/.face";
            size = 100;
            border_color = accent.rgb;
            position = "0, 75";
            halign = "center";
            valign = "center";
          }
        ];

        "input-field" = [
          {
            monitor = "";
            size = "300, 60";
            outline_thickness = 4;
            dots_size = 0.2;
            dots_spacing = 0.2;
            dots_center = true;
            outer_color = accent.rgb;
            inner_color = colors.surface0.rgb;
            font_color = colors.text.rgb;
            fade_on_empty = false;
            placeholder_text = "<span foreground=\"##${colors.text.alpha}\"><i>󰌾 Logged in as </i><span foreground=\"##${accentAlpha}\">$USER</span></span>";
            hide_input = false;
            check_color = accent.rgb;
            fail_color = colors.red.rgb;
            fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
            capslock_color = colors.yellow.rgb;
            position = "0, -47";
            halign = "center";
            valign = "center";
          }
        ];
      };
    };
  }
