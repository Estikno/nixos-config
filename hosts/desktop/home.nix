{ config, pkgs, ... }:

{
  imports = [
    ../../modules/home-manager/picom.nix
    ../../modules/home-manager/alacritty.nix
    ../../modules/home-manager/fastfetch.nix
    ../../modules/home-manager/git.nix
    ../../modules/home-manager/nnn.nix
    ../../modules/home-manager/rofi.nix
    ../../modules/home-manager/udiskie.nix
  ];

  home.username = "david";
  home.homeDirectory = "/home/david";

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    picom
    dconf # Required for customizing stuff
    # nnn (No need to be installed here, it gets enabled somewhere else)
    brave
    # fastfetch (No need to be installed here, it gets enabled somewhere else)
    lazygit
    feh
    premake5
    btop
    dunst
    xfce.thunar

    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";
}
