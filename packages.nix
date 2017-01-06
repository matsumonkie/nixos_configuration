{ config, pkgs, ... }:

{
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  environment = with pkgs;
    let
      utils = [
        curl
        fasd
        htop
        modemmanager
        redshift
        silver-searcher
        trash-cli
        psmisc # killall
        wget
        which
        xorg.xev
        xorg.xkbcomp
        xorg.setxkbmap
        zsh
      ];

      multimedia = [
        chromium
        #gimp
        skype
        vlc
      ];

      dev = [
        docker
        emacs
        #firefox
        git
        redis
        xsel # emacs copy/paste
      ];

      rubyDev = [
        chruby
        ruby
      ];

      ui = [
        sddm
        kde5.plasma-pa
        kde5.plasma-nm
        kde5.plasma-workspace
        kde5.plasma-desktop
        kde5.plasma-workspace-wallpapers
        kde5.kdeplasma-addons
      ];
    in
      { systemPackages = utils ++ multimedia ++ dev ++ rubyDev ++ ui; };
}
