{ config, lib, pkgs, ... }:

{
  # The NixOS release to be compatible with for stateful data such as databases.
  system = {
    stateVersion = "16.03";

    activationScripts = {
      rights = ''
        # system-conf group can edit system
        chgrp system-conf /etc/nixos -R && chmod g+w /etc/nixos -R
      '';
    };
  };
}
