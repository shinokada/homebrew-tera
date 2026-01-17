class Tera < Formula
  desc "Interactive Bash script terminal music radio player. Play your favorite radio station, CRUD your favorite lists, and explore new radio stations from your terminal. "
  homepage "https://tera.codewithshin.com/"
  url "https://github.com/shinokada/tera/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "828dc1a61b399fd2131048176b1fb36704bbed7ab7fa06383d5bab2f269c0ab9"
  license "MIT"

  uses_from_macos "bash"

  depends_on "mpv"
  depends_on "jq"
  depends_on "fzf"
  depends_on "wget"
  depends_on "git"

  def install
    # Install everything in libexec to preserve directory structure
    libexec.install "tera", "lib", "images", "LICENSE"
    
    # Create a symlink from bin to the actual script
    bin.install_symlink libexec/"tera"
  end

  test do
    system "#{bin}/tera", "--version"
  end
end
