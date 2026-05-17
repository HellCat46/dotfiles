{ config, pkgs, inputs, ... }:
{
  imports = [
    ./hyprland.nix
    ./hyprutils.nix
    ./applauncher.nix
  ];


  home.packages = with pkgs; [
    hypridle
    hyprpaper
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
    showtime
    transmission_4-gtk
    #resources
    (callPackage ./helium.nix {})
  ];
}
