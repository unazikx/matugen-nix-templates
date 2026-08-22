{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.targets.cava;

  base16 = type: config.matugen.theme.generated.base16.${type}.default;

  pair = (pos: color: lib.nameValuePair "gradient_color_${toString (pos + 1)}" "'${color}'");

  colorsList = [
    (base16 "base0e")
    (base16 "base0d")
    (base16 "base0c")
    (base16 "base0b")
    (base16 "base0a")
    (base16 "base09")
    (base16 "base08")
  ];
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
      settings.color = lib.mkMerge [
        (builtins.listToAttrs (lib.imap0 pair colorsList))
        {
          background = base16 "base00";
          foreground = base16 "base05";
          gradient = 1;
          gradient_count = builtins.length colorsList;
        }
      ];
    };
  };
}
