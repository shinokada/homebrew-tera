class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.3.7.tar.gz"
    sha256 "f3d1bf26e3a4b4ab0d45ade71d016ae8ea4725d0d90b2febb91b8506d00fd44c"
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