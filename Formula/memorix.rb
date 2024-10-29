class Memorix < Formula
  desc "Memorix - CLI"
  homepage "https://github.com/uvop/memorix"
  version "2.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-arm64"
      sha256 "1554ae57a909bd77b8214b9513a9886550a764fda7b63584095fd4f745418d73"
    else
      url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64"
      sha256 "1812101c9bb7bb79ae599e24de894702e94bea2309570185854c43ea7ce119d5"
    end
  end
  
  on_linux do
    url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64"
    sha256 "48f0e20786c7dedbfde3b3221be184a13430acf69c1f1c7b8de51102125f8c14"
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
