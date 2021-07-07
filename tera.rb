class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.2.8.tar.gz"
    sha256 "140ec92b950173a784185b41184b804337752cfc2423bf7dde7e46c0994d473e"
    license "MIT"
  
    depends_on "mpv"
    depends_on "gh"
    depends_on "jq"

    def install
      bin.install "tera"
      bin.install "LICENSE"
      bin.install "README.md"
      bin.install "delete_station"
      bin.install "gist"
      bin.install "lib"
      bin.install "list"
      bin.install "lucky"
      bin.install "play"
      bin.install "search"
      bin.install Dir["./images"]

    end
  
    test do
      system "false"
    end
  end