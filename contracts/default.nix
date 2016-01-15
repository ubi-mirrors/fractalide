{ pkgs, support }:
let
callPackage = pkgs.lib.callPackageWith (pkgs // support);
in
# insert in alphabetical order to prevent conflicts
rec {
  maths_boolean = callPackage ./maths/boolean {};
  maths_number = callPackage ./maths/number {};
}
