{ pkgs }:

pkgs.appimageTools.wrapType2 {
  pname = "helium";
  version = "0.11.2.1";

  src = pkgs.fetchurl {
    url = "https://github.com/imputnet/helium-linux/releases/download/0.11.2.1/helium-0.11.2.1-x86_64.AppImage";
    sha256 = "sha256-tGOgJSCGrGfkG2aE0VcGm2GH8ttiBQ602GftlWEHRHA=";
  };

  meta = {
    description = "Private, fast, and honest web browser";
    homepage = "https://helium.computer";
    platforms = [ "x86_64-linux" ];
  };
}

