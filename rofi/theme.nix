{ pkgs, ... }:
{
  programs.rofi = {
    theme = {
      "*" = {
        bg-col = "#1e1e2e";
        bg-col-light = "#1e1e2e";
        border-col = "#1e1e2e";
        selected-col = "#1e1e2e";
        blue = "#89b4fa";
        fg-col = "#cdd6f4";
        fg-col2 = "#f38ba8";
        grey = "#6c7086";
        width = 600;
        font = "JetBrainsMono Nerd Font 14";
      };

      "element-text, element-icon, mode-switcher" = {
        background-color = "inherit";
        text-color = "inherit";
      };

      "window" = {
        height = "360px";
        border = 3;
        border-color = "@border-col";
        background-color = "@bg-col";
      };

      "mainbox" = {
        background-color = "@bg-col";
      };

      "inputbar" = {
        children = [ "prompt" "entry" ];
        background-color = "@bg-col";
        border-radius = 5;
        padding = 2;
      };

      "prompt" = {
        background-color = "@blue";
        padding = 6;
        text-color = "@bg-col";
        border-radius = 3;
        margin = "20px 0px 0px 20px";
      };

      "textbox-prompt-colon" = {
        expand = false;
        str = ":";
      };

      "entry" = {
        padding = 6;
        margin = "20px 0px 0px 10px";
        text-color = "@fg-col";
        background-color = "@bg-col";
      };

      "listview" = {
        border = "0px 0px 0px";
        padding = "6px 0px 0px";
        margin = "10px 0px 0px 20px";
        columns = 2;
        lines = 5;
        background-color = "@bg-col";
      };

      "element" = {
        padding = 5;
        background-color = "@bg-col";
        text-color = "@fg-col";
      };

      "element-icon" = {
        size = 25;
      };

      "element selected" = {
        background-color = "@selected-col";
        text-color = "@fg-col2";
      };

      "mode-switcher" = {
        spacing = 0;
      };

      "button" = {
        padding = 10;
        background-color = "@bg-col-light";
        text-color = "@grey";
        vertical-align = "0.5";
        horizontal-align = "0.5";
      };

      "button selected" = {
        background-color = "@bg-col";
        text-color = "@blue";
      };

      "message" = {
        background-color = "@bg-col-light";
        margin = 2;
        padding = 2;
        border-radius = 5;
      };

      "textbox" = {
        padding = 6;
        margin = "20px 0px 0px 20px";
        text-color = "@blue";
        background-color = "@bg-col-light";
      };
    };
  };
}
