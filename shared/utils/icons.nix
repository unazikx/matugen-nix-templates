{
  lib,
  ...
}:

{
  options = {
    matugen.icons = {
      enable = lib.mkEnableOption "Icons decalaration";

      desktop = {
        name = lib.mkOption {
          description = "Name for use icon from package";
          type = lib.types.nullOr lib.types.str;
          default = null;
        };

        package = lib.mkOption {
          description = "Package with icons";
          type = lib.types.nullOr lib.types.package;
          default = null;
        };
      };

      terminal = {
        name = lib.mkOption {
          description = "Name for use icon from package";
          type = lib.types.nullOr lib.types.str;
          default = null;
        };

        package = lib.mkOption {
          description = "Package with icons";
          type = lib.types.nullOr lib.types.package;
          default = null;
        };
      };
    };
  };
}
