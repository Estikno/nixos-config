{ config, pkgs, ...}:

{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "nixos_small";
        padding = {
          top = 1;
        };
        width = 50;
      };
      display = {
        separator = "  ";
      };
      modules = [
        "break"
        "title"
        {
          type = "os";
          key = "os    ";
          keyColor = "33";
        }
	{
	  type = "kernel";
	  key = "kernel";
	  keyColor = "33";
	}
	{
	  type = "host";
	  format = "{5} {1}";
	  key = "host";
	  keyColor = "33";
	}
	{
	  type = "packages";
	  # format = "{} (nixpkgs)";
	  # key = "pkgs  ";
	  keyColor = "33";
	}
	# "packages"
	{
	  type = "uptime";
	  format = "{2}h {3}m";
	  key = "uptime";
	  keyColor = "33";
	}
	{
	  type = "memory";
	  key = "memory";
	  keyColor = "33";
	}
	"break"
      ];
    };
  };
}
