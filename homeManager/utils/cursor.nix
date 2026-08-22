{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.cursor;
in

{
  config = lib.mkIf cfg.enable {
    home.pointerCursor = {
      inherit (cfg)
        name
        package
        ;

      enable = true;
      size = builtins.floor (cfg.size);
    };
  };
}
