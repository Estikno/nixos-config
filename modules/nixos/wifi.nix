{ config, pkgs, ... }:

{
  # https://www.reddit.com/r/NixOS/comments/18w2i99/cant_connect_to_eduroam/
  networking.wireless.enable = false;  # Disable base WPA-Supplicant
  networking.wireless.iwd.enable = false; # Disable iwd as a backend of NetworkManager, as it will use WPA-Supplicant
}
