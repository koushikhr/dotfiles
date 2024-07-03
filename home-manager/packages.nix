{pkgs, ...}: {
  imports = [
    ./modules/packages.nix
    ./scripts/blocks.nix
    ./scripts/nx-switch.nix
    ./scripts/vault.nix
  ];

  packages = with pkgs; {
    linux = [
      (mpv.override {scripts = [mpvScripts.mpris];})
      gnome-secrets
      spotify
      youtube-music
      fastfetch
      vlc
      transmission_4-gtk
      libreoffice-qt6-fresh
      vdhcoapp
      # this is for the shellhook portion
      qt6.wrapQtAppsHook
      makeWrapper
      bashInteractive
      # yabridge
      # yabridgectl
      # wine-staging
      nodejs
    ];
    cli = [
      bat
      eza
      fd
      ripgrep
      fzf
      lazydocker
      lazygit
    ];
  };
}
