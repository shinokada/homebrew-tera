class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.2.11.tar.gz"
    sha256 "e64058e8bcf883421cbe0513f7c79ed1ca19cba87640c81689a03b2d683f3054"
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