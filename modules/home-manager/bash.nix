{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    initExtra = ''
      # Prompt
      export PS1='\[\e]0;\u@\h: \w\a\]\[\e[92m\]\u\[\e[0m\] in \[\e[96;1m\]\w\[\e[0m\] \[\e[92;1m\]\[\e[0m\] '

      # Yazi alias
      y() {
        local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
        yazi "$@" --cwd-file="''$tmp"
        IFS= read -r -d "" cwd < "''$tmp"
        [ -n "''$cwd" ] && [ "''$cwd" != "''$PWD" ] && builtin cd -- "''$cwd"
        rm -f -- "''$tmp"
      }

      # Aliases
      alias ls='ls --color=auto'
      alias la='ls -la'
      alias grep='grep --color=auto'

      # Display system infor on terminal start
      fastfetch
    '';
  };
}
