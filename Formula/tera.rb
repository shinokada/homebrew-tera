class Tera < Formula
  desc "Interactive Bash script terminal music radio player. Play your favorite radio station, CRUD your favorite lists, and explore new radio stations from your terminal. "
  homepage "https://tera.codewithshin.com/"
  url "https://github.com/shinokada/tera/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "828dc1a61b399fd2131048176b1fb36704bbed7ab7fa06383d5bab2f269c0ab9"
  license "MIT"

  depends_on "mpv"
  depends_on "jq"
  depends_on "fzf"
  depends_on "wget"
  depends_on "git"

  # Skip all build phases - this is a simple Bash script installation
  def configure
    # No configuration needed
  end

  def build
    # No build step needed
  end

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
