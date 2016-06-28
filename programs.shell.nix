{ config, ... }:

{
  environment = {
    interactiveShellInit =
      let
        cfgPath = ./config;
        files = [/zsh.aliases /zsh.functions];
        contents = map (file : builtins.readFile (cfgPath + file)) files;
      in
        builtins.foldl' (file1: file2: file1 + file2) "" contents;
    shellInit = ''
      # editor
      export EDITOR='emacsclient -nw -t'
      # no duplicate
      setopt hist_ignore_all_dups
      # no correction
      unsetopt correct_all
      COMPLETION_WAITING_DOTS="true"
    '';
  };
}
