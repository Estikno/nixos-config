{ config, pkgs, ...}:

{
  # Disable mouse acceleration and customize sensitivity
  services.libinput = {
    enable = true;
    mouse = {
      accelProfile = "flat";
      accelSpeed = "0";
    };
    touchpad.naturalScrolling = true;
  };
}
