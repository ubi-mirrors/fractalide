{ stdenv, buildFractalideComponent, filterContracts, genName, upkeepers, ...}:

buildFractalideComponent rec {
  name = genName ./.;
  src = ./.;
  filteredContracts = filterContracts ["app_counter"];
  depsSha256 = "0pvvlmf1ikm6hnbixd21y3i1i3fyqa7qz4z5nsr2r49b5lj8vs73";

  meta = with stdenv.lib; {
    description = "Component: decrease by one the number";
    homepage = https://github.com/fractalide/fractalide/tree/master/components/maths/boolean/print;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
