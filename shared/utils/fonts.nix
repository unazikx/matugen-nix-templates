{
  lib,
  ...
}:

{
  options = {
    matugen.fonts = {
      enable = lib.mkEnableOption "Fonts decalaration";

      brand = {
        name = lib.mkOption {
          description = "Main font";
          type = lib.types.nullOr lib.types.str;
          default = null;
        };

        package = lib.mkOption {
          type = lib.types.nullOr lib.types.package;
          default = null;
        };
      };

      plain = {
        name = lib.mkOption {
          description = "Secondary font";
          type = lib.types.nullOr lib.types.str;
          default = null;
        };

        package = lib.mkOption {
          type = lib.types.nullOr lib.types.package;
          default = null;
        };
      };

      monospace = {
        name = lib.mkOption {
          description = "Monospace font";
          type = lib.types.nullOr lib.types.str;
          default = null;
        };

        package = lib.mkOption {
          type = lib.types.nullOr lib.types.package;
          default = null;
        };
      };

      sizes = {
        applications = lib.mkOption {
          description = "Size for gui applications";
          type = lib.types.nullOr lib.types.int;
          default = null;
        };

        desktop = lib.mkOption {
          description = "Size for desktop utils (bar, panel)";
          type = lib.types.nullOr lib.types.int;
          default = null;
        };

        popups = lib.mkOption {
          description = "Size for popups, notifications";
          type = lib.types.nullOr lib.types.int;
          default = null;
        };
      };
    };
  };
}
