{ config, pkgs, ... }:
{
  imports = [
    ./hyprland.nix
    ./hyprutils.nix
  ];

  home.packages = with pkgs; [
    hypridle
    hyprpaper
  ];
}
