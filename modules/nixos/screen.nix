{ config, pkgs, ...}:

{
  # Control screen blank time (0 means it's disabled)
  services.xserver.serverFlagsSection = ''
    Option "BlankTime" "10"     # minutes to screen blank
    Option "StandbyTime" "0"  # minutes to standby
    Option "SuspendTime" "0"  # minutes to suspend
    Option "OffTime" "20"      # minutes to power off
  '';
}
