{ config, pkgs, ...}:

{
  home.file.".config/qtile".source = ../../modules/home-manager/qtile;
}
