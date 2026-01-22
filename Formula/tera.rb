# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tera < Formula
  desc "Interactive Bash script terminal music radio player. Play your favorite radio station, CRUD your favorite lists, and explore new radio stations from your terminal. "
  homepage "https://tera.codewithshin.com/"
  url "https://github.com/shinokada/tera/archive/refs/tags/v0.8.1.tar.gz"
  sha256 "36898ec6f11748caa4a52ae933b449339657d67d71c3ea17bf7453bc6c7e37dd"
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
