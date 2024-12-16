class Memorix < Formula
  desc "Memorix - CLI"
  homepage "https://github.com/uvop/memorix"
  version "2.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-arm64"
      sha256 "438e49d6c4f87e5dbb555b4d06fc42401496d0f08481a6176da46cc82f1948e4"
    else
      url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64"
      sha256 "4b12596d76d1846e22e57b0a90c15ccfcb0122ba95ffeeb217a32fb720285b7a"
    end
  end
  
  on_linux do
    url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64"
    sha256 "6129f4c4a648469beacbd54fdd3f952cb98c15728ce23e06203490cba3d7f3bb"
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
