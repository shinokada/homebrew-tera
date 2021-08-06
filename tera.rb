class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.3.15.tar.gz"
    sha256 "f77583e09b08e1deef65447310db172852ef16d7f7edbec81ae8f3065041e0a0"
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