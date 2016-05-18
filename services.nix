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
      #multitouch = {
      #  enable = true;
      #  invertScroll = true;
      #};
      synaptics = {
        enable = true;
        minSpeed = "0.1";
        maxSpeed = "15";
        accelFactor = "0.8";
        twoFingerScroll = true;
        #tapButtons = true;
        #buttonsMap = [ 1 3 2 ];

        additionalOptions = ''
          # "Natural" scrolling
          Option "VertScrollDelta" "-30"
          Option "HorizScrollDelta" "-30"
          Option "EmulateMidButtonTime" "100"
        '';
      };
    };
  };
}
