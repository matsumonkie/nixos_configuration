{ config, lib, pkgs, ... }:

{
  # Use the gummiboot efi boot loader.
  boot = {
    loader = {
      grub.device = "/dev/sda";
      gummiboot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };
}
