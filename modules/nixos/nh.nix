
{ config, pkgs, ...}:

{
  # A tool that simplifies cleaning garbadge manually
  programs.nh = {
   enable = true;
   clean = {
     enable = true;
     extraArgs = "--keep 5";
   };
  };
}
