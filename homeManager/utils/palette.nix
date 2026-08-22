{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.palette;
  theme = config.matugen.theme;
in

{
  config = lib.mkIf cfg.enable {
    xdg.cacheFile = {
      "matugen/theme.json".text = lib.toJSON theme;
      "matugen/base16.json".text = lib.toJSON theme.base16;
      "matugen/palettes.json".text = lib.toJSON theme.palettes;
    };
  };
}
