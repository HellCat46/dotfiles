{ inputs, config, pkgs, ... }:
{
  imports = [
    ./rofi
    ./cli
    ./cosmetic
  ];
  home.username = "hellcat";
  home.homeDirectory = "/home/hellcat";
  home.stateVersion = "24.11";

  # Enable home-manager
  programs.home-manager.enable = true;
  programs.hyprlock.enable = true;


  nixpkgs.config.allowUnfree = true;

  # User packages
  home.packages = (with pkgs; [
    fuzzel
    thunderbird
    zed-editor
    networkmanagerapplet
    vesktop
    chromium
    vivaldi
    qt5.full
    playerctl
    firefox
    pavucontrol
    vscode
    audacity
    xfce.thunar
    zettlr
    grim 
    slurp 
    haskellPackages.greenclip
    wl-clipboard
    hypridle
    hyprpaper
    inputs.zen-browser.packages."${system}".default
    spotify
    obs-studio
    android-studio
    jdk23
    gdb 
    nodejs
    yarn
    clang-tools
    android-tools
  ]) ++ 
    (with pkgs.jetbrains; [
      idea-ultimate
      goland
      clion
    ]);


  services.dunst.enable = true;
  qt.enable = true; 
  gtk.enable = true;
}
