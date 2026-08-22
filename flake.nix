{
  outputs =
    _:
    let
      import-tree = import ./import-tree.nix;
    in
    {
      homeModules.default = {
        imports = builtins.concatLists [
          (import-tree ./homeManager)
          (import-tree ./shared)
        ];
      };
    };
}
