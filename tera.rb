class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.3.3.tar.gz"
    sha256 "9c54d95713018ffebc152a4a5eacc55fc5e80d138f838895e80a5e7fe8afd203"
    license "MIT"
  
    depends_on "mpv"
    depends_on "gh"
    depends_on "jq"
    depends_on "fzf"

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