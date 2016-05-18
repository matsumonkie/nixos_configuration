{ config, lib, pkgs, ... }:

{
  # sudo
  security = {
    sudo = {
      enable = true;
      extraConfig = ''
        # iori can sudo everything
        iori ALL=(ALL) SETENV: ALL
      '';
    };
  };
}
