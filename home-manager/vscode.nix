{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      eamodio.gitlens
      esbenp.prettier-vscode
      vscode-icons-team.vscode-icons
      dracula-theme.theme-dracula
      zhuangtongfa.material-theme
    ];
    userSettings = {
      "terminal.integrated.fontFamily" = "Hack";
      "workbench.iconTheme" = "vscode-icons";
      "workbench.colorTheme" = "Dracula";
    };
  };
}
