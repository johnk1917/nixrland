{ pkgs }: 
let
  image = ../wallpapers/japan_garden.jpg ;
in
pkgs.stdenv.mkDerivation {
  name = "sddm-theme";
  src = pkgs.fetchFromGitHub {
    owner = "johnk1917";
    repo = "sddm-sugar-candy-tokyonight";
    rev = "9dca04d48ccb12404b48b97026bae6452e38be5b";
    sha256 = "0alh2pgwl5x7wr0yb3npxn1q35r8s5g2rxrvas94gbzgs9572ppn";
  };
  installPhase = ''
    mkdir -p $out
    cp -R ./* $out/
    cd $out/
    rm japan_garden.jpg
    cp -r ${image} $out/japan_garden.jpg
   '';
}
