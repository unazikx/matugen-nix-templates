{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.icons;
in

{
  config = lib.mkIf cfg.enable { };
}
