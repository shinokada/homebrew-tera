class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.4.0.tar.gz"
    sha256 "748874373578ddf47b6ceb6b6cdaa7fd822523aa5c2a31d9a20117637b8c56d7"
    license "MIT"
  
    depends_on "mpv"
    depends_on "gh"
    depends_on "jq"
    depends_on "fzf"
    depends_on "wget"

    def install
        bin.install "tera"
        bin.install Dir["images"]
        bin.install Dir["lib"]
        prefix.install "LICENSE"
        prefix.install "README.md"
    end
  
    test do
        system "false"
    end
  end