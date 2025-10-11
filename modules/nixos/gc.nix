{ config, pkgs, ...}:

{
  # Add an automatic generation cleanup tool that leaves as many as you want available
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 10d";
  };
}
