path:

let
  allFiles = builtins.attrNames (builtins.readDir path);

  filteredFiles = builtins.filter (name: builtins.substring 0 1 name != "_") allFiles;

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
  ) [ ] filteredFiles;
in

traverse
