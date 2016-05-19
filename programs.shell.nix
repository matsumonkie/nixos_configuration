
{ config, lib, pkgs, ... }:

{
  config = {
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

      shellAliases = {
        # Nix
        nixe = "nix-env";
        nixc = "nix-channel";
        nixs = "nix-store";
        nixr = "nixos-rebuild";

        # Util
        rm = "trash";
        copy = "xclip -selection clipboard";
        paste = "xclip -o";
        la = "ls -la";
        ".." = "cd ..";
        "..." = "cd ../..";
        "...." = "cd ../../..";
        "....." = "cd ../../../..";
        "-- -" = "cd -";
        j = "fasd_cd -d";
        e = "emacsclient -nw -t";
        p = "cd $(git rev-parse --show-toplevel)";

        # Git
        gd = "git diff";
        grhh = "git reset --hard HEAD";
        gds = "git diff --staged";
        ga = "git add";
        ggpush = "git push origin $(current_branch)";
        ggpull = "git pull origin $(current_branch)";
        gs = "git status -s";
        gg = "git log --pretty=oneline -n 20 --graph --abbrev-commit";
        gcam = "git commit --amend -C HEAD";
        gco = "git checkout";
        gc = "git commit";
        gp = "git push";

        # Ruby
        b = "bundle";
        be = "bundle exec";
      };
    };
  };
}
