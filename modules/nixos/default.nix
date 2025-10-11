{ config, pkgs, ... }:

{
  imports =
    [ 
      ./language.nix
      ./sound.nix
      ./bootloader.nix
      ./ly.nix
      ./qtile.nix
      ./screen.nix
      ./mouse.nix
      ./udisks2.nix
      ./gc.nix
      ./users.nix
      ./network.nix
      ./fonts.nix
      # ./tlp.nix
      # ./nvidia.nix
      # ./intel.nix
      # ./wifi.nix
    ];
}
