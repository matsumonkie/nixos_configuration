{ config, pkgs, ... }:

{
  environment.etc."gitconfig".text = import ./config/git.nix {};

}
