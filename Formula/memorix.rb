class Memorix < Formula
  desc "Memorix - CLI"
  homepage "https://github.com/uvop/memorix"
  version "2.1.0-rc4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-arm64"
      sha256 "ee7123533922e96c4590664f0822c8abb3c74438c5d7733b3c840887eaee114b"
    else
      url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64"
      sha256 "253b6fd49744658cb58248c28ea6c24dbeff6dcb2be52dbd845dabcf966f514e"
    end
  end
  
  on_linux do
    url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64"
    sha256 "b888e4c390de101e33e3c9f7ec36eab5adeac345bf172e1b8a54e1bb381fc2f4"
  end

  def install
    binary_name = if OS.mac?
      if Hardware::CPU.arm?
        "memorix-macos-arm64"
      else
        "memorix-macos-x64"
      end
    else
      "memorix-linux-x64"
    end

    bin.install binary_name => "memorix"
    chmod 0755, bin/"memorix"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/memorix --version")
  end
end
