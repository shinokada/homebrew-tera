class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.3.14.tar.gz"
    sha256 "0ff1883d280057508610c47dbe600d433825537024befa1a6be3e371aa1e14ab"
    license "MIT"
  
    depends_on "mpv"
    depends_on "gh"
    depends_on "jq"
    depends_on "fzf"
    depends_on "curl"

    def install
        bin.install Dir["./images"]
        bin.install "delete_station.sh"
        bin.install "gistlib.sh"
        bin.install "lib.sh"
        bin.install "LICENSE"
        bin.install "list.sh"
        bin.install "lucky.sh"
        bin.install "play.sh"
        bin.install "README.md"
        bin.install "sample.json"
        bin.install "search.sh"
        bin.install "tera"
    end
  
    test do
        system "false"
    end
  end