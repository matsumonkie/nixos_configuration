
{ config, ... }:

{
  environment = {
    shellInit = ''
      # editor
      export EDITOR='emacsclient -nw -t'
      # no duplicate
      setopt hist_ignore_all_dups
      # no correction
      unsetopt correct_all
      COMPLETION_WAITING_DOTS="true"

      function f { find . -iname "*$1*" }
      function take () { mkdir -p "$@" && cd "$@" }
      function fix { git commit -m "fixup! $*" };
    '';
  };
}
