{
  outputs =
    _:
    let
      import-tree = import ./import-tree.nix;
    in
    {
      homeModules = import-tree ./homeManager;
    };
}
