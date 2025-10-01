{ config, pkgs, ...}:

{
  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark"; # Tema GTK oscuro
      package = pkgs.gnome-themes-extra;
    };
    cursorTheme = {
      name = "Bibata-Original-Classic";
      package = pkgs.bibata-cursors;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    gtk4 = {
      extraConfig = {
        gtk-application-prefer-dark-theme = 1;
      };
      # extraCss = {
      #
      # }
    };
  };

  home.pointerCursor = {
    name = "Bibata-Original-Classic";
    package = pkgs.bibata-cursors;
    size = 20; # optional: default is usually 24
    gtk.enable = true; # ensures GTK uses the same cursor
    x11.enable = true; # sets the X11 cursor
  };
}
