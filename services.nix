{ config, lib, pkgs, ... }:

{
  services = {
    xserver = {
      # X11
      enable = true;

      # desktop environment
      displayManager.kdm.enable = true;
      desktopManager.kde4.enable = true;

      # trackpad
      synaptics = {
        enable = true;
        minSpeed = "0.1";
        maxSpeed = "10";
        accelFactor = "0.5";
        twoFingerScroll = true;

        additionalOptions = ''
          # "Natural" scrolling
          Option "VertScrollDelta" "-30"
          Option "HorizScrollDelta" "-30"
          Option "EmulateMidButtonTime" "100"
        '';
      };
    };

    openssh = {
      #knownHosts = [
      #  {
          #hostNames = [ "mr_dev" ];
          #publicKeyFile = /etc/ssh/medrefer.pub;
      #  }
      #];
    };
  };
}
