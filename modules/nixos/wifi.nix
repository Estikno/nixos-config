{ config, pkgs, ... }:

{
  # https://www.reddit.com/r/NixOS/comments/18w2i99/cant_connect_to_eduroam/
  networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
}
