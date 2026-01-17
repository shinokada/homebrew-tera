class Tera < Formula
  desc "Interactive Bash script terminal music radio player. Play your favorite radio station, CRUD your favorite lists, and explore new radio stations from your terminal. "
  homepage "https://tera.codewithshin.com/"
  url "https://github.com/shinokada/tera/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "8cdb8b47cc6e0516bf505432ec674ece4ab9a902893f2c75fc3fdf7a55139d2f"
  license "MIT"

  depends_on "mpv"
  depends_on "jq"
  depends_on "fzf"
  depends_on "wget"
  depends_on "git"

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
