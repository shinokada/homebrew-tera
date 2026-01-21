# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tera < Formula
  desc "Interactive Bash script terminal music radio player. Play your favorite radio station, CRUD your favorite lists, and explore new radio stations from your terminal. "
  homepage "https://tera.codewithshin.com/"
  url "https://github.com/shinokada/tera/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "d5feecc28846094f61fa524b0ef3d25b3a57f31b4895118d57adeba31a9b61c1"
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
