path:

let
  files = builtins.readDir path;

  process =
    name: type:
    let
      fullPath = "${path}/${name}";
    in
    if (type == "directory") then
      {
        ${name} = traverse fullPath;
      }
    else if ((type == "regular") && (builtins.match ".*\\.nix$" name != null)) then
      (
        let
          attrName = builtins.substring 0 (builtins.stringLength name - 4) name;
        in
        {
          ${attrName} = import fullPath;
        }
      )
    else
      { };

  traverse = (
    builtins.foldl' (
      acc: name:
      let
        result = process name (builtins.getAttr name files);
      in
      (acc // result)
    ) { } (builtins.attrNames files)
  );
in

traverse
