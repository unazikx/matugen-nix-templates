{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.fonts;
in

{
  config = lib.mkIf cfg.enable {
    home.packages = [
      cfg.brand.package
      cfg.plain.package
      cfg.monospace.package
    ];
  };
}
