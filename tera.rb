class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.4.3.tar.gz"
    sha256 "abc77037f423d91501e5c6d8d27298115020501a7dd634bfc87d8b09207b816f"
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
    end
  
    test do
        system "false"
    end
  end