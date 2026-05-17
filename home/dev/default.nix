{ config, pkgs, ...}:
{
  imports = [
    ./art.nix
    ./systemdev.nix
    ./webdev.nix
  ];
  
  home.packages = with pkgs; [
    bruno
    vscode
    lazydocker
  ];
}
