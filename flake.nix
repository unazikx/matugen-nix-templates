{
  outputs = inputs: {
    homeModules = {
      cava = import ./modules/homeManager/cava.nix;
    };
  };
}
