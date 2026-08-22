{
  lib,
  ...
}:

{
  options = {
    matugen.cursor = {
      enable = lib.mkEnableOption "Cursor decalaration";

      name = lib.mkOption {
        description = "Name for use cursor from package";
        type = lib.types.nullOr lib.types.str;
        default = null;
      };

      package = lib.mkOption {
        description = "Package with cursor";
        type = lib.types.nullOr lib.types.package;
        default = null;
      };

      size = lib.mkOption {
        description = "Cursor size";
        type = lib.types.nullOr lib.types.int;
        default = null;
      };
    };
  };
}
