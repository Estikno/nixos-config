{ config, pkgs, ... }:
{
  services = {
    printing = {
      enable = true;
      browsing = true;
      drivers = [
        pkgs.hplipWithPlugin
      ];
    };

    ipp-usb.enable = true;

    # avahi = {
    #   enable = true;
    #   nssmdns4 = true;
    #   openFirewall = true;
    # };
    # ipp-usb.enable = true;
  };
}
