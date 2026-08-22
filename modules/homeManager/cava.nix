{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.targets.cava;

  base16 = type: config.matugen.theme.generated.base16.${type}.default;

  mkColorsAttrs =
    colorsList:
    (
      (builtins.listToAttrs (
        lib.imap0 (
          number: color: lib.nameValuePair "gradient_color_${toString (number + 1)}" "'#${color}'"
        ) colorsList
      ))
      // {
        gradient = 1;
        gradient_count = builtins.length colorsList;
      }
    );
in

{
  imports = [ ];

  options = {
    matugen.targets.cava = {
      enable = lib.mkEnableOption "Cava theming";
    };
  };

  config = lib.mkIf cfg.enable {
    programs.cava = {
      settings.color = mkColorsAttrs [
        (base16 "base0e")
        (base16 "base0d")
        (base16 "base0c")
        (base16 "base0b")
        (base16 "base0a")
        (base16 "base09")
        (base16 "base08")
      ];
    };
  };
}
