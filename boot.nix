{ config, lib, pkgs, ... }:

{
  # Use the gummiboot efi boot loader.
  boot = {
    loader = {
      grub.device = "/dev/sda";
      gummiboot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    initrd = {
      supportedFilesystems = ["vfat" "ntfs" "cifs" "nfs"];
    };

    extraModprobeConfig = ''
      options snd_hda_intel enable=0,1
    '';
  };
}
