{ config, pkgs, ... }:
{
  imports = [
    ./hyprland.nix
    ./hyprutils.nix
    ./applauncher.nix
  ];

  home.packages = with pkgs; [
    hypridle
    hyprpaper
    playerctl
    slurp
    grim
    wl-clipboard
  ];
}
