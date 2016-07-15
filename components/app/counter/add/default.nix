{ stdenv, buildFractalideComponent, filterContracts, genName, upkeepers, ...}:

buildFractalideComponent rec {
  name = genName ./.;
  src = ./.;
  filteredContracts = filterContracts ["app_counter"];
  depsSha256 = "0iginsnrsyfjpihq8nvsacxsg0r3iwrm10xpvz0cqfg8i5q1w35q";

  meta = with stdenv.lib; {
    description = "Component: increase by one the number";
    homepage = https://github.com/fractalide/fractalide/tree/master/components/maths/boolean/print;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}