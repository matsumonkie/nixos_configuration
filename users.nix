{ config, lib, pkgs, ... }:

{
  users = {
    defaultUserShell = "/run/current-system/sw/bin/zsh";
    extraUsers.iori = {
      isNormalUser = true;
      uid = 1000;
      group = "iori";
      extraGroups = ["networkmanager" "docker" "system-conf"];
      shell = "/run/current-system/sw/bin/zsh";
    };

    groups = {
      iori = {};
      docker = {};
      system-conf = {};
    };
  };
}
