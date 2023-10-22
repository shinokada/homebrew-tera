class Tera < Formula
    desc "Terminal radio, TERA, plays radio, CRUD favorites, search radio stations. Powered by Radio Browser API and MPV, a free, open source, and cross-platform media player."
    url "https://github.com/shinokada/tera/archive/refs/tags/v0.4.2.tar.gz"
    sha256 "b5bc3c5d560b05a2700b68c65e6f06e056784afc84e8336bc56a68f7584e8edd"
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