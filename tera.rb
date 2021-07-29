class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.3.13.tar.gz"
    sha256 "61e25a671810071ba615fbcdc919492f1b1a1778cbdf2c5ea322c80faa2e7a87"
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