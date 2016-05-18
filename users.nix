{ config, lib, pkgs, ... }:

{
  users = {
    defaultUserShell = "/run/current-system/sw/bin/zsh";
    extraUsers.iori = {
      isNormalUser = true;
      uid = 1000;
      extraGroups = ["networkmanager" "docker"];
      shell = "/run/current-system/sw/bin/zsh";
    };
    extraGroups = {
      docker = {};
    };
  };
}
