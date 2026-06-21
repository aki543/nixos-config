
{ config, pkgs, ... }:

{
  home.username = "aki543";
  home.homeDirectory = "/home/aki543";

  home.stateVersion = "24.11";

  programs.git = {
    enable = true;
    userName = "aki543";
    userEmail = "maru.akihisa@gmail.com";

    extraConfig = {
      pull.rebase = true;
      rerere.enabled = true;
      init.defaultBranch = "main";
      color.ui = "auto";
      core.ditor = "navim";
      merge.conflictsytyle = "zdiff3";
      # ghq.root = /home/$(USER)/.ghq;
      ghq.root = /home/aki543/.ghq;

      alias = {
        st = "status";
        co = "checkout";
        br = "branch";
        ci = "commit";
        sw = "switch";
      };
    };
  };

  programs.zsh = {
    enable = true;

    shellAliases = {
      # eza aliases
      alias ls = "eza --icons"
      alias ll = "eza -l --icons"
      alias la = "eza -la --icons"
      alias lla = "eza -lha --icons"
      alias lt = "eza --tree --level=2 --icons"

      # clear
      alias c = "clear"

      # nvim
      alias nv = "nvim"

      # zoxide
      alias z = "zoxide"

      # nixos rebuild
      alias rebuild = "sudo nixos-rebuild switch --flake .#nixos"
    };
  };

  xdg.configFile."nvim".source = ./.config/nvim;
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };

  home.packages = with pkgs; [
    ripgrep
    fd
    jq
  ];
}
