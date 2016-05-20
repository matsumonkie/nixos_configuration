{ config, lib, pkgs, ... }:

{
  programs = {
    zsh = {
      enable = true;
    };

    ssh = {
      startAgent = true;
      agentTimeout = "1d";
      knownHosts = [
        {
          hostNames = [ "github.com" ];
          publicKeyFile = "/home/iori/.ssh/medrefer.pub";
        }
      ];
    };
  };
}
