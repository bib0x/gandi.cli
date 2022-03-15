with (import <nixpkgs> {});
mkShell {
  buildInputs = [ gandi-cli ];
  shellHook = ''
    export API_KEY=$(api-store <key>)
  '';
}
