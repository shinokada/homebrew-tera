class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.3.2.tar.gz"
    sha256 "0be3693af9404c2cdd455d67c2de6b19422efabe416210be34f66236b9bcde65"
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