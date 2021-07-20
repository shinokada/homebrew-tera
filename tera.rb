class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.3.9.tar.gz"
    sha256 "e81977ef62cc1ebf72b8be04ed19fdc38bfdec2c1ed84da92179cc7622532e12"
    license "MIT"
  
    depends_on "mpv"
    depends_on "gh"
    depends_on "jq"
    depends_on "fzf"
    depends_on "curl"

    def install
        bin.install Dir["./images"]
        bin.install "delete_station"
        bin.install "gistlib"
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