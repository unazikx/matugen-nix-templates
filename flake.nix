{
  outputs =
    _:
    let
      import-tree = import ./import-tree.nix;
    in
    {
      homeModules.default = {
        imports = (import-tree ./homeManager);
      };
    };
}
