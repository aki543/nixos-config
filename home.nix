
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
      core.editor = "nvim";
      merge.conflictsytyle = "zdiff3";
      # TODO:
      # ghq.root = /home/$(USER)/.ghq;
      ghq.root = "/home/aki543/.ghq";

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
      ls = "eza --icons";
      ll = "eza -l --icons";
      la = "eza -la --icons";
      lla = "eza -lha --icons";
      lt = "eza --tree --level=2 --icons";

      # clear
      c = "clear";

      # nvim
      nv = "nvim";

      # zoxide
      z = "zoxide";

      # nixos rebuild
        rebuild = "sudo nixos-rebuild switch --flake .#nixos";
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
    eza
  ];
}
