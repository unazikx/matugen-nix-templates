{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.example;

  inherit (config.matugen.theme.generated)
    base16
    colors
    palettes
    ;
in

{
  imports = [ ];

  options = {
    matugen.example = {
      enable = lib.mkEnableOption "Example";
    };
  };

  config = lib.mkIf cfg.enable { };
}
