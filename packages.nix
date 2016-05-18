{ config, pkgs, ... }:

{
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  environment.systemPackages = with pkgs; [
    xsel # emacs copy/paste
    docker
    fasd # autojump
    trash-cli
    wget
    curl
    htop
    emacs
    chruby
    ruby
    skype
    git
    zsh
    vlc
    which
    redis
    chromium
    #firefox
    kde4.kde_baseapps
    kde4.kdeadmin
    kde4.kdenetwork
    kde4.plasma-nm
    kde4.kdebase_workspace
    kde4.kdelibs
    kde4.kdevelop
    kde4.kdevplatform
  ];

}