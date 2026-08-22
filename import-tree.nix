path:

let
  traverse = builtins.foldl' (
    acc: name:
    let
      fullPath = "${path}/${name}";
      type = builtins.typeOf (import fullPath);
    in
    if ((type == "lambda") || (type == "set") || (type == "path")) then
      (acc ++ [ (import fullPath) ])
    else
      acc
  ) [ ] (builtins.attrNames (builtins.readDir path));
in

traverse
