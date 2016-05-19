{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./boot.nix
      ./environment.nix
      ./hardware-configuration.nix
      ./i18n.nix
      ./networking.nix
      ./packages.nix
      ./programs.nix
      ./programs.shell.nix
      ./services.nix
      ./security.nix
      ./system.nix
      ./time.nix
      ./users.nix
      ./virtualisation.nix
    ];
}
