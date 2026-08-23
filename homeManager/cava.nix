{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.targets.cava;
  inherit (config.matugen.theme.generated)
    base16
    ;
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
      settings.color = {
        background = base16.base00.default;
        foreground = base16.base05.default;

        gradient = 1;
        gradient_color_1 = base16.base0e.default;
        gradient_color_2 = base16.base0d.default;
        gradient_color_3 = base16.base0c.default;
        gradient_color_4 = base16.base0b.default;
        gradient_color_5 = base16.base0a.default;
        gradient_color_6 = base16.base09.default;
        gradient_color_7 = base16.base08.default;
        gradient_count = 7;
      };
    };
  };
}
