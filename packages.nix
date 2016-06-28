{ config, pkgs, ... }:

{
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  environment = {
    systemPackages = with pkgs; [
      # SYSTEM
      curl
      fasd
      trash-cli
      htop
      psmisc # killall
      wget
      which
      zsh
      silver-searcher
      modemmanager

      # MULTIMEDIA
      chromium
      vlc
      #gimp

      # DEV
      chruby
      docker
      emacs
      #firefox
      git
      redis
      ruby
      skype
      xsel # emacs copy/paste

      # UI
      kde4.kde_baseapps
      kde4.kdeadmin
      kde4.kdenetwork
      kde4.plasma-nm
      kde4.kdebase_workspace
      kde4.kdelibs
      kde4.kdevelop
      kde4.kdevplatform
    ];
  };

}
