{ pkgs ? (import <nixpkgs> {}), shell ? false }:

with pkgs.coqPackages_8_9;

pkgs.stdenv.mkDerivation {

  name = "my-project-name";

  propagatedBuildInputs = [
    coq
  ];

  src = ./.;

  installFlags = "COQLIB=$(out)/lib/coq/${coq.coq-version}/";
}

