{ config, pkgs, ... }:

{
  # Enable OpneGL
  hardware.graphics = {
    enable = true;
  };

  # Load nvidia driver for Xorg and Wayland
  services.xserver.videoDrivers = [ "modesetting" ];

  hardware.graphics.extraPackages = with pkgs; [
    # For modern Intel CPU's
    intel-media-driver # Enable Hardware Acceleration
    vpl-gpu-rt # Enable QSV
  ];

  environment.sessionVariables = { LIBVA_DRIVER_NAME = "iHD"; };
}
