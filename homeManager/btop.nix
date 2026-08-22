{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.targets.btop;

  inherit (config.matugen.theme.generated)
    colors
    ;
in

{
  imports = [ ];

  options = {
    matugen.targets.btop = {
      enable = lib.mkEnableOption "BTop theming";
    };
  };

  config = lib.mkIf cfg.enable {
    programs.btop = {
      settings.color_theme = "matugen-md3";
      themes.matugen-md3 = ''
        theme[main_bg]=""
        theme[main_fg]="${colors.on_surface.default}"
        theme[title]="${colors.primary.default}"
        theme[hi_fg]="${colors.secondary.default}"
        theme[selected_bg]="${colors.primary.default}"
        theme[selected_fg]="${colors.on_primary.default}"
        theme[inactive_fg]="${colors.on_surface_variant.default}"
        theme[proc_misc]="${colors.tertiary.default}"
        theme[cpu_box]="${colors.outline.default}"
        theme[mem_box]="${colors.outline.default}"
        theme[net_box]="${colors.outline.default}"
        theme[proc_box]="${colors.outline.default}"
        theme[div_line]="${colors.outline_variant.default}"
        theme[temp_start]="${colors.secondary.default}"
        theme[temp_mid]="${colors.primary.default}"
        theme[temp_end]="${colors.error.default}"
        theme[cpu_start]="${colors.secondary.default}"
        theme[cpu_mid]="${colors.primary.default}"
        theme[cpu_end]="${colors.error.default}"
        theme[free_start]="${colors.secondary.default}"
        theme[free_mid]=""
        theme[free_end]="${colors.secondary_container.default}"
        theme[cached_start]="${colors.tertiary.default}"
        theme[cached_mid]=""
        theme[cached_end]="${colors.tertiary_container.default}"
        theme[available_start]="${colors.primary.default}"
        theme[available_mid]=""
        theme[available_end]="${colors.primary_container.default}"
        theme[used_start]="${colors.error.default}"
        theme[used_mid]=""
        theme[used_end]="${colors.error_container.default}"
        theme[download_start]="${colors.secondary.default}"
        theme[download_mid]="${colors.primary.default}"
        theme[download_end]="${colors.tertiary.default}"
        theme[upload_start]="${colors.secondary.default}"
        theme[upload_mid]="${colors.primary.default}"
        theme[upload_end]="${colors.tertiary.default}"
      '';
    };
  };
}
