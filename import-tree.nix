path:

let
  traverse =
    dir:
    let
      items = builtins.attrNames (builtins.readDir dir);
      process =
        name:
        let
          full = "${dir}/${name}";
          type = (builtins.readDir dir).${name};
        in
        if ((type == "directory") && (builtins.substring 0 1 name != "_")) then
          traverse full
        else if
          (
            (type == "regular")
            && (builtins.match ".*\\.nix$" name != null)
            && (builtins.substring 0 1 name != "_")
          )
        then
          [ (import full) ]
        else
          [ ];
    in
    builtins.concatMap process items;
in

traverse path
