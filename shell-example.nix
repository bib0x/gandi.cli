with (import <nixpkgs> {});
mkShell {
  buildInputs = [ gandi-cli ];
  shellHook = ''
    export API_KEY=$(PASSWORD_STORE_DIR=<dir> pass <key>)
  '';
}
