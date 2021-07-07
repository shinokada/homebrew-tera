class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.2.10.tar.gz"
    sha256 "47dd8207e72f99385afc535af3e2daa2f76998d2937d6b5c913d62c374fa84fb"
    license "MIT"
  
    depends_on "mpv"
    depends_on "gh"
    depends_on "jq"

    def install
        bin.install Dir["./images"]
        bin.install "delete_station"
        bin.install "gist"
        bin.install "lib"
        bin.install "LICENSE"
        bin.install "list"
        bin.install "lucky"
        bin.install "play"
        bin.install "README.md"
        bin.install "sample.json"
        bin.install "search"
        bin.install "tera"
    end
  
    test do
        system "false"
    end
  end