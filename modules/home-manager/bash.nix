{ config, pkgs, ...}:

{
  programs.bash = {
    enable = true;
    initExtra = ''
      # Prompt
      export PS1='\[\e]0;\u@\h: \w\a\]\[\e[92m\]\u\[\e[0m\] in \[\e[96;1m\]\w\[\e[0m\] \[\e[92;1m\]\[\e[0m\] '

      # nnn alias
      n() {
        # Block nesting of nnn in subshells
        [ "''${NNNLVL:-0}" -eq 0 ] || {
            echo "nnn is already running"
            return
        }

        # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
        # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
        # see. To cd on quit only on ^G, remove the "export" and make sure not to
        # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
        #      NNN_TMPFILE="''${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
        export NNN_TMPFILE="''${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

        # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
        # stty start undef
        # stty stop undef
        # stty lwrap undef
        # stty lnext undef

        # The command builtin allows one to alias nnn to n, if desired, without
        # making an infinitely recursive alias
        command nnn "$@"

        [ ! -f "$NNN_TMPFILE" ] || {
          . "$NNN_TMPFILE"
          rm -f -- "$NNN_TMPFILE" >/dev/null
        }
      }

      # Display system infor on terminal start
      fastfetch
    '';
  };
}
