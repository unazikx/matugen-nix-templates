{
  lib,
  config,
  ...
}:

let
  cfg = config.matugen.targets.helix;
  inherit (config.matugen.theme.generated)
    colors
    ;
in

{
  imports = [ ];

  options = {
    matugen.targets.helix = {
      enable = lib.mkEnableOption "Helix theming";
    };
  };

  config = lib.mkIf cfg.enable {
    programs.helix = {
      settings.theme = "matugen-md3";
      themes.matugen-md3 = {
        "attribute" = colors.primary.default;
        "type" = colors.secondary.default;
        "type.enum.variant" = colors.secondary.default;
        "constructor" = colors.primary_fixed.default;

        "constant" = colors.tertiary.default;
        "constant.character" = colors.tertiary.default;
        "constant.character.escape" = colors.tertiary_container.default;

        "string" = colors.primary.default;
        "string.regexp" = colors.tertiary_container.default;
        "string.special" = colors.primary_fixed.default;
        "string.special.symbol" = colors.error.default;

        "comment" = {
          "fg" = colors.on_surface_variant.default;
          "modifiers" = [ "italic" ];
        };

        "variable" = colors.on_background.default;
        "variable.parameter" = {
          "fg" = colors.error_container.default;
          "modifiers" = [ "italic" ];
        };
        "variable.builtin" = colors.error.default;
        "variable.other.member" = colors.primary.default;

        "label" = colors.primary_fixed.default;

        "punctuation" = colors.on_surface_variant.default;
        "punctuation.special" = colors.secondary.default;

        "keyword" = colors.primary.default;
        "keyword.control.conditional" = {
          "fg" = colors.primary.default;
          "modifiers" = [ "italic" ];
        };

        "operator" = colors.secondary.default;

        "function" = colors.primary.default;
        "function.macro" = colors.primary_container.default;

        "tag" = colors.primary.default;
        "namespace" = {
          "fg" = colors.secondary.default;
          "modifiers" = [ "italic" ];
        };

        "special" = colors.primary.default;

        "markup.heading.1" = colors.error.default;
        "markup.heading.2" = colors.primary.default;
        "markup.heading.3" = colors.secondary.default;
        "markup.heading.4" = colors.tertiary.default;
        "markup.heading.5" = colors.primary_fixed.default;
        "markup.heading.6" = colors.on_primary_fixed_variant.default;

        "markup.list" = colors.secondary.default;
        "markup.list.unchecked" = colors.on_surface_variant.default;
        "markup.list.checked" = colors.primary_fixed.default;

        "markup.bold" = {
          "fg" = colors.primary.default;
          "modifiers" = [ "bold" ];
        };
        "markup.italic" = {
          "fg" = colors.secondary.default;
          "modifiers" = [ "italic" ];
        };

        "markup.link.url" = {
          "fg" = colors.primary.default;
          "modifiers" = [
            "italic"
            "underlined"
          ];
        };
        "markup.link.text" = colors.primary_fixed.default;
        "markup.link.label" = colors.tertiary.default;
        "markup.raw" = colors.on_tertiary_container.default;
        "markup.quote" = colors.tertiary_container.default;

        "diff.plus" = colors.tertiary.default;
        "diff.minus" = colors.error.default;
        "diff.delta" = colors.primary.default;

        "ui.background" = {
          "fg" = colors.on_background.default;
          "bg" = "none";
        };

        "ui.linenr" = {
          "fg" = colors.on_surface_variant.default;
        };
        "ui.linenr.selected" = {
          "fg" = colors.primary_fixed.default;
        };

        "ui.statusline" = {
          "fg" = colors.on_primary_container.default;
          "bg" = "none";
        };
        "ui.statusline.inactive" = {
          "fg" = colors.on_surface_variant.default;
          "bg" = "none";
        };
        "ui.statusline.normal" = {
          "fg" = colors.background.default;
          "bg" = "none";
          "modifiers" = [ "bold" ];
        };
        "ui.statusline.insert" = {
          "fg" = colors.background.default;
          "bg" = "none";
          "modifiers" = [ "bold" ];
        };
        "ui.statusline.select" = {
          "fg" = colors.background.default;
          "bg" = "none";
          "modifiers" = [ "bold" ];
        };

        "ui.popup" = {
          "fg" = colors.on_surface.default;
          "bg" = "none";
        };
        "ui.window" = {
          "fg" = colors.on_surface_variant.default;
        };
        "ui.help" = {
          "fg" = colors.on_surface_variant.default;
          "bg" = "none";
        };

        "ui.bufferline" = {
          "fg" = colors.on_surface_variant.default;
          "bg" = "none";
        };
        "ui.bufferline.active" = {
          "fg" = colors.on_primary.default;
          "bg" = colors.primary.default;
          "underline" = {
            "color" = colors.primary.default;
            "style" = "line";
          };
        };
        "ui.bufferline.background" = {
          "bg" = "none";
        };

        "ui.text" = colors.on_background.default;
        "ui.text.focus" = {
          "fg" = colors.primary.default;
          "bg" = "none";
          "modifiers" = [ "bold" ];
        };
        "ui.text.inactive" = {
          "fg" = colors.on_surface_variant.default;
        };
        "ui.text.directory" = {
          "fg" = colors.primary.default;
        };

        "ui.virtual" = colors.on_surface_variant.default;
        "ui.virtual.ruler" = {
          "bg" = "none";
        };
        "ui.virtual.indent-guide" = colors.surface_container_low.default;
        "ui.virtual.inlay-hint" = {
          "fg" = colors.on_surface_variant.default;
          "bg" = "none";
        };
        "ui.virtual.jump-label" = {
          "fg" = colors.primary_container.default;
          "modifiers" = [ "bold" ];
        };

        "ui.selection" = {
          "bg" = colors.outline_variant.default;
        };

        "ui.cursor" = {
          "fg" = colors.background.default;
          "bg" = colors.on_primary_container.default;
        };
        "ui.cursor.primary" = {
          "fg" = colors.background.default;
          "bg" = colors.primary_fixed.default;
        };
        "ui.cursor.match" = {
          "fg" = colors.on_primary_container.default;
          "modifiers" = [ "bold" ];
        };

        "ui.highlight" = {
          "bg" = colors.secondary_container.default;
          "modifiers" = [ "bold" ];
        };

        "ui.menu" = {
          "fg" = colors.on_surface.default;
          "bg" = "none";
        };
        "ui.menu.selected" = {
          "fg" = colors.primary.default;
          "bg" = "none";
          "modifiers" = [ "bold" ];
        };

        "diagnostic.error" = {
          "fg" = colors.error.default;
          "underline" = {
            "color" = colors.error.default;
            "style" = "curl";
          };
        };
        "diagnostic.warning" = {
          "fg" = colors.secondary.default;
          "underline" = {
            "color" = colors.secondary.default;
            "style" = "curl";
          };
        };
        "diagnostic.info" = {
          "fg" = colors.tertiary.default;
          "underline" = {
            "color" = colors.tertiary.default;
            "style" = "curl";
          };
        };
        "diagnostic.hint" = {
          "fg" = colors.tertiary_container.default;
          "underline" = {
            "color" = colors.tertiary_container.default;
            "style" = "curl";
          };
        };
        "diagnostic.unnecessary" = {
          "modifiers" = [ "dim" ];
        };

        "error" = colors.error.default;
        "warning" = colors.tertiary.default;
        "info" = colors.primary.default;
        "hint" = colors.secondary.default;
      };
    };
  };
}
