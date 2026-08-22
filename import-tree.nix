path:

let
  allFiles = builtins.attrNames (builtins.readDir path);
  filteredFiles = builtins.filter (name: builtins.substring 0 1 name != "_") allFiles;
  imported = map (name: import "${path}/${name}") filteredFiles;
in

imported
