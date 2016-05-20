{ config, lib, pkgs, ... }:

{
  users =
    let
      user = "iori";
      zsh = "/run/current-system/sw/bin/zsh";
    in {
      defaultUserShell = zsh;
      extraUsers.${user} = {
        isNormalUser = true;
        uid = 1000;
        group = "${user}";
        extraGroups = ["networkmanager" "docker" "system-conf"];
        shell = zsh;
      };

      groups = {
        iori = {};
        docker = {};
        system-conf = {};
      };
  };
}
