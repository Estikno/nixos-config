{ config, pkgs, ...}:

{
  # Configure qtile
  services.xserver = {
    enable = true;
    #displayManager.startx.enable = true;
    windowManager.qtile = {
      enable = true;
      extraPackages = python3Packages: with python3Packages; [
        qtile-extras
      ];
    };
  };
}
