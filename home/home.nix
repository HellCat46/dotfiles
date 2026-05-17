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
    ./dev
];
  home.username = "hellcat";
  home.homeDirectory = "/home/hellcat";
  home.stateVersion = "25.11";

  # Enable home-manager
  programs.home-manager.enable = true;

  nixpkgs.config.allowUnfree = true;

  dconf.enable = true;

  # User packages
  home.packages = with unstable; [
        poppler-utils
        discord
        android-studio
        platformio
        valgrind
        zed-editor
    ];


  services.dunst.enable = false;
  qt.enable = true;
}
