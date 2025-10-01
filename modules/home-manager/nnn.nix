{ config, pkgs, ...}:

{
  programs.nnn = {
    enable = true;
    package = pkgs.nnn.override { withNerdIcons = true; };
    plugins = {
      # Download all available pluguins from the github repo
      src = (pkgs.fetchFromGitHub {
        owner = "jarun";
        repo = "nnn";
        rev = "v5.1";      # or a newer version
        sha256 = "sha256-+2lFFBtaqRPBkEspCFtKl9fllbSR5MBB+4ks3Xh7vp4=";
      }) + "/plugins";
      mappings = {
        c = "fzcd";
	f = "finder";
      };
    };
  };
}
