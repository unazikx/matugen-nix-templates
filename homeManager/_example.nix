{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.targets.example;

  inherit (config.matugen.theme.generated)
    base16
    colors
    palettes
    ;
in

{
  imports = [ ];

  options = {
    matugen.targets.example = {
      enable = lib.mkEnableOption "Example theming";
    };
  };

  config = lib.mkIf cfg.enable { };
}
