{config, ...}:
{
  programs.fuzzel = {
    enable = true;
    settings = let
      colors = import ./catppuccin.nix;
      in {
        colors = {
          background = colors.base.alpha;
          text = colors.text.alpha;
          prompt = colors.subtext1.alpha;
          placeholder = colors.overlay1.alpha;
          input = colors.text.alpha;
          match = colors.lavender.alpha;
          selection = colors.surface2.alpha;
          selection-text = colors.text.alpha;
          selection-match = colors.lavender.alpha;
          counter = colors.overlay1.alpha;
          border = colors.lavender.alpha;
        };
      };
  };
}
