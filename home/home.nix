{ inputs, config, pkgs, ... }:
let
  unstable = import inputs.nixpkgs-unstable {
    system = pkgs.system;
    config = config.nixpkgs.config;
  };
in
{
  imports = [
    ./cli
    ./cosmetic
    ./deskEnv
  ];
  home.username = "hellcat";
  home.homeDirectory = "/home/hellcat";
  home.stateVersion = "24.11";

  # Enable home-manager
  programs.home-manager.enable = true;


  nixpkgs.config.allowUnfree = true;

  # User packages
  home.packages = (with pkgs; [
    thunderbird
    zed-editor
    vesktop
    spotify-player
    chromium
    vivaldi
    resources
    pavucontrol
    vscode
    audacity
    xfce.thunar
    zettlr
    d-spy
    bustle
    haskellPackages.greenclip
    inputs.zen-browser.packages."${system}".default
    obs-studio
    gdb 
    nodejs
    yarn
    clang-tools
    android-tools
    unstable.android-studio
    unstable.ollama-cuda
  ]) ++ 
    (with unstable.jetbrains; [
      idea-ultimate
      goland
      clion
    ]);


  services.dunst.enable = true;
  qt.enable = true; 
  gtk.enable = true;
}
