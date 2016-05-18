{ config, lib, pkgs, ... }:

{
  networking = {
    hostName = "hal";
    networkmanager.enable = true;
    extraHosts = ''
      127.0.0.1 localhost
      127.0.1.1 hal
      103.16.130.107 dev
      103.16.130.107 staging
    '';
  };
}
