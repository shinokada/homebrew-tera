class Tera < Formula
  desc "Terminal-based internet radio player"
  homepage "https://shinokada.github.io/tera/"
  version "1.0.0-rc.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/shinokada/tera/releases/download/v1.0.0-rc.1/tera_1.0.0-rc.1_darwin_amd64.tar.gz"
      sha256 "6ce1d170326355e5a423cc7d551e295a8e248f5841d7332f9d310bc7be620b4f"
    end
    on_arm do
      url "https://github.com/shinokada/tera/releases/download/v1.0.0-rc.1/tera_1.0.0-rc.1_darwin_arm64.tar.gz"
      sha256 "e7b03c0e6b5de25411bb9395e193704f0f824a2792ade090f17963a8d7148214"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shinokada/tera/releases/download/v1.0.0-rc.1/tera_1.0.0-rc.1_linux_amd64.tar.gz"
      sha256 "d4e90e3d2cfa5dd9c286da31df86f4afe2b1fed322a6476e142f8cfe49a0f907"
    end
    on_arm do
      url "https://github.com/shinokada/tera/releases/download/v1.0.0-rc.1/tera_1.0.0-rc.1_linux_arm64.tar.gz"
      sha256 "5904ef726ee11aecac4e1315410061b16dde38c35679d9c28b6524086e58ba8d"
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