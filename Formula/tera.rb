class Tera < Formula
  desc "Terminal-based internet radio player"
  homepage "https://shinokada.github.io/tera/"
  version "1.0.0-rc.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/shinokada/tera/releases/download/v1.0.0-rc.3/tera_1.0.0-rc.3_darwin_amd64.tar.gz"
      sha256 "1e3ca5c91235033bfadf7a8b1cca4cfe4ca6eaa4ea2c52e424c1f9c81852b214"
    end
    on_arm do
      url "https://github.com/shinokada/tera/releases/download/v1.0.0-rc.3/tera_1.0.0-rc.3_darwin_arm64.tar.gz"
      sha256 "e4827769178c83ca4c46b9f7cdf549c001c9cb07a981ce80f3684a6378e83726"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shinokada/tera/releases/download/v1.0.0-rc.3/tera_1.0.0-rc.3_linux_amd64.tar.gz"
      sha256 "ed43b33cdd609f3e28b4586b2e27c1da2091302b976a941af3ee3b10910bab71"
    end
    on_arm do
      url "https://github.com/shinokada/tera/releases/download/v1.0.0-rc.3/tera_1.0.0-rc.3_linux_arm64.tar.gz"
      sha256 "24f489dbf02baa6288968e7a7e49cc50e0c2339684134af5062542acca30baa4"
    end
  end

  depends_on "mpv"

  def install
    bin.install "tera"
  end

  test do
    assert_match "TERA", shell_output("#{bin}/tera --version")
  end
end