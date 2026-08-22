{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.targets.dunst;

  inherit (config.matugen.theme.generated)
    colors
    ;
in

{
  imports = [ ];

  options = {
    matugen.targets.dunst = {
      enable = lib.mkEnableOption "Dunst theming";
    };
  };

  config = lib.mkIf cfg.enable {
    services.dunst.settings = {
      global = {
        frame_color = colors.primary.default;
        highlight = colors.primary.default;
        separator_color = colors.outline.default;
      };

      urgency_low = {
        background = colors.surface.default;
        foreground = colors.on_surface.default;
        highlight = colors.primary_container.default;
      };

      urgency_normal = {
        background = colors.surface.default;
        foreground = colors.on_surface.default;
        highlight = colors.primary_container.default;
      };

      urgency_critical = {
        background = colors.surface.default;
        foreground = colors.on_surface.default;
        highlight = colors.error.default;
      };
    };
  };
}
