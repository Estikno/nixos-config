{ config, pkgs, ...}:

{
  programs.git = {
    enable = true;
    lfs.enable = true;
    userName = "Estikno";
    userEmail = "95084542+Estikno@users.noreply.github.com";
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = "/etc/nixos";
    };
  };
}
