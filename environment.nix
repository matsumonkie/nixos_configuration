{ config, ... }:

{
  environment = {
    etc."gitconfig".text = builtins.readFile ./config/git;
    #shellAliases = builtins.readFile ./config/zsh.aliases;
  };
}
