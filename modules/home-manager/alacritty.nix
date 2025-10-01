{ config, pkgs, ...}:

{
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        size = 10.0;
	bold = {
	  family = "JetBrainsMono Nerd Font Mono";
	  style = "Bold";
	};
	bold_italic= {
	  family = "JetBrainsMono Nerd Font Mono";
	  style = "Bold Italic";
	};
	italic = {
	  family = "JetBrainsMono Nerd Font Mono";
	  style = "Italic";
	};
	normal = {
	  family = "JetBrainsMono Nerd Font Mono";
	  style = "Regular";
	};
      };
      window = {
        padding.x = 5;
	padding.y = 5;
        opacity = 0.8;
      };
    };
  };
}
