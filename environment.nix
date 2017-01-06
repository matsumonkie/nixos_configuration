{ config, ... }:

{
  environment = {
    etc."gitconfig".text = builtins.readFile ./config/git;
  };
}
