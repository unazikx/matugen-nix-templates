{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.targets.cava;

  inherit (config.matugen.theme.generated) base16;

  pack = color: "'${color}'";
  pair = (pos: color: lib.nameValuePair "gradient_color_${toString (pos + 1)}" (pack color));

  colorsList = [
    base16.base0e.default
    base16.base0d.default
    base16.base0c.default
    base16.base0b.default
    base16.base0a.default
    base16.base09.default
    base16.base08.default
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
          background = pack base16.base00.default;
          foreground = pack base16.base05.default;
          gradient = 1;
          gradient_count = builtins.length colorsList;
        }
      ];
    };
  };
}
