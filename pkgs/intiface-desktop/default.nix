{ stdenv }:
stdenv.mkDerivation rec {
  pname = "intiface-desktop";
  version = "27.0.0";
  src = builtins.fetchTarball {
    url = "https://github.com/intiface/intiface-desktop/releases/download/v${version}/intiface-desktop-${version}-linux-x64.tar.gz";
    sha256 = "1rh4prqvs9fqpb5yhgydpnc33s33xinfszxapxrqzb81w410yhwc";
  };

  installPhase = ''
    mkdir -p $out/bin
    ln -s $src/intiface-desktop $out/bin/intiface-desktop
  '';
}

