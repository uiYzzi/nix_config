{ pkgs }:

with pkgs;
let shared-packages = import ../shared/packages.nix { inherit pkgs; }; in
shared-packages ++ [
  cocoapods
  ios-deploy
  watchman

  terraform
]
