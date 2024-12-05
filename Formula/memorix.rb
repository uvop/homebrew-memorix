class Memorix < Formula
  desc "Memorix - CLI"
  homepage "https://github.com/uvop/memorix"
  version "2.1.0-rc1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-arm64"
      sha256 "bacd598b70814aa29a81865130e38dd71ed2f28787aab6de81665bd5db96f9ad"
    else
      url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64"
      sha256 "6c673e1839b196617bc9121b8a1955b682c7c5f53b58f5e8b3c3fdd41862980c"
    end
  end
  
  on_linux do
    url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64"
    sha256 "c81711f091ac735be6c7c003b0a3255c81c29864ac260c4471c50a311c2965a0"
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
