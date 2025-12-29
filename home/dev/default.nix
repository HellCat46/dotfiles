{ config, pkgs, ...}:
{
  imports = [
    ./zed.nix
    ./art.nix
    ./systemdev.nix
    ./webdev.nix
  ];
  
  home.packages = with pkgs; [
    bruno
  ];
}