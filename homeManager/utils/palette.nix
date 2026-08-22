{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.palette;
  theme = config.matugen.theme;

  inherit (config.matugen.theme.generated)
    colors
    ;
in

{
  config = lib.mkIf cfg.enable {
    xdg.configFile = {
      "matugen-nix/theme.json".text = lib.toJSON theme;
      "matugen-nix/base16.json".text = lib.toJSON theme.base16;
      "matugen-nix/palettes.json".text = lib.toJSON theme.palettes;

      "matugen-nix/colors.css".text = ''
        :root {
        ${lib.concatStringsSep "\n" (
          lib.mapAttrsToList (name: value: "  --${name}: ${value.default};") colors
        )}
        }
      '';
    };
  };
}
