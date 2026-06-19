{ config, pkgs, ... };

{
  home.username = "aki543";
  home.homeDirectory = "/home/aki543";

  home.stateVersion = "24.11";

  programs.git = {
    enable = true;
    userName = "aki543";
    userEmail = "maru.akihisa@gmail.com";
  };

  home.packages = with pkgs; [
    ripgrep
    fd
    jq
  ];
}
