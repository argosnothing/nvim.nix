{
  pkgs ? import <nixpkgs> {},
  extraPkgs ? [],
}:
pkgs.mkShellNoCC {
  name = "default";
  buildInputs =
    [(import ./nix/buildEnv.nix {inherit pkgs;})]
    ++ extraPkgs;

  # Note to myself for pushing config
  # git config url."git@github.com:".pushInsteadOf "https://github.com/"
  shellHook = ''
    lefthook install
    git fetch
    git status --short --branch
    export PATH="$PATH:/usr/local/bin"
  '';
}
