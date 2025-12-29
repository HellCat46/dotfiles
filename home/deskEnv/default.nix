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
    pavucontrol
    wl-clipboard
    xdg-utils
    xfce.thunar
    ueberzugpp
    google-chrome
    firefox
    zettlr
    obs-studio
    #resources
];
}
