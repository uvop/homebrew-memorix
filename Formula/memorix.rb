class Memorix < Formula
  desc "Memorix - CLI"
  homepage "https://github.com/uvop/memorix"
  version "2.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-arm64"
      sha256 "dddcfeeab56d5d03167dcf091684ef0d20bc2a4f8ca93dd41e9aadeb7c9c1d18"
    else
      url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64"
      sha256 "fccf76e72aa81f8fafd7f256b0209bc4cf90a196fe9c05cb4fe8a8e6425bcdc8"
    end
  end
  
  on_linux do
    url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64"
    sha256 "b687018db576dfbd794aaa65ad939259d7eb493f625628bca415a33421447b4f"
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
