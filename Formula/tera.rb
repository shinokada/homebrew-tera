class Tera < Formula
  desc "Interactive Bash script terminal music radio player. Play your favorite radio station, CRUD your favorite lists, and explore new radio stations from your terminal. "
  homepage "https://tera.codewithshin.com/"
  url "https://github.com/shinokada/tera/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "56bbc4d4ea02824268ceb1e932dfe394cfa9ce66ef9f8b18c4f31ee82352fd78"
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
