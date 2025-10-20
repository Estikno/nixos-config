{ config, pkgs, ...}:

{
  imports = [
    ./picom.nix
    ./alacritty.nix
    ./fastfetch.nix
    ./git.nix
    ./rofi.nix
    ./udiskie.nix
    ./gtk.nix
    ./bash.nix
    ./qtile.nix
    ./wallpapers.nix
    ./yazi.nix
  ];
}
