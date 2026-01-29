class Tera < Formula
  desc "Terminal-based internet radio player"
  homepage "https://shinokada.github.io/tera/"
  version "1.0.0-rc.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/shinokada/tera/releases/download/v1.0.0-rc.2/tera_1.0.0-rc.2_darwin_amd64.tar.gz"
      sha256 "dc9d409de414dcae271356f15110e39d5a573dd8ab9f467a903c409080591667"
    end
    on_arm do
      url "https://github.com/shinokada/tera/releases/download/v1.0.0-rc.2/tera_1.0.0-rc.2_darwin_arm64.tar.gz"
      sha256 "85f5f25e7d1b55436a288878d8bd8d05ae09b5cf48b7177287eb11b6b21377c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shinokada/tera/releases/download/v1.0.0-rc.2/tera_1.0.0-rc.2_linux_amd64.tar.gz"
      sha256 "9e83477d566ee402c15e7e99c23bdbbcd1929bd157409f6e96fc60cb18b85985"
    end
    on_arm do
      url "https://github.com/shinokada/tera/releases/download/v1.0.0-rc.2/tera_1.0.0-rc.2_linux_arm64.tar.gz"
      sha256 "c36e30b187bdd6afd711543428b1d70991e038b6ed0d99066d95d804bcb98e5c"
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