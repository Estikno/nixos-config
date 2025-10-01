{ config, pkgs, ...}:

{
  # Enable OpneGL
  hardware.graphics = {
    enable = true;
  };

  # Load nvidia driver for Xorg and Wayland
  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    # Modesetting is required
    modesetting.enable = true;

    # Experimental. Enable if you have graphical corruption issues
    powerManagement.enable = false;

    # Turns off GPU when not in use. Only available for modern nvidia GPUs (Turing or newer)
    powerManagement.finegrained = false;

    # Use nvidia open source kernel module (not to be confused with "nouveau")
    open = true;

    # Enable nvidia settings menu accessible via 'nvidia-settings'
    nvidiaSettings = true;

    videoAcceleration = true;

    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
}
