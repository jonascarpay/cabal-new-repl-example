let
  hsPkgs = import ./.;
  pkgs = import <nixpkgs> { };
in
hsPkgs.shellFor {
  tools = { cabal = "3.2.0.0"; };
}
