{config, pkgs, ...}:
{
  imports = [
    ./zsh.nix
    ./alacritty.nix
  ];

  home.packages = with pkgs; [
    alacritty
    lazygit
    tmux
    jq
    neovim
    gdu
  ];
}
