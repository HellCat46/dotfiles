{config, ...}: 
{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    history = {
      path = "$HOME/.histfile";
      size = 50000;
      save = 50000;
    };

    initContent = ''
      # Search history
      bindkey '\e[A' history-search-backward
      bindkey '\e[B' history-search-forward

      # Additional key bindings
      bindkey "^[[H" beginning-of-line
      bindkey "^[[F" end-of-line
      bindkey "^[[3~" delete-char

      # Start starship
      eval "$(starship init zsh)"
     '';
      # pnpm
     # export PNPM_HOME="$HOME/.local/share/pnpm"
     # case ":$PATH:" in
     #   *":$PNPM_HOME:"*) ;;
     #   *) export PATH="$PNPM_HOME:$PATH" ;;
     # esac

      # fnm
      #eval "$(fnm env --use-on-cd)"
    #'';
    sessionVariables = {
      PATH = "$PATH:$HOME/.dotnet/tools/:$HOME/.local/bin:$HOME/Android/Sdk/platform-tools:$HOME/Android/Sdk/emulator";
      GOPRIVATE = "github.com/Seikakuna/*";
      PROMPT_EOL_MARK = "";
    };
    completionInit = ''
      autoload -U compinit && compinit
      zmodload -i zsh/complist
      zstyle ':completion:*' menu select
    '';
  };
}
