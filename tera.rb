class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.4.1.tar.gz"
    sha256 "61a55857e117d9f67a0cd730ed5503ad066f7e1e0bb061718f1adcd37a291578"
    license "MIT"
  
    depends_on "mpv"
    depends_on "gh"
    depends_on "jq"
    depends_on "fzf"
    depends_on "wget"

    def install
        bin.install "tera"
        bin.install Dir["images"]
        bin.install Dir["lib"]
        prefix.install "LICENSE"
        prefix.install "README.md"
    end
  
    test do
        system "false"
    end
  end