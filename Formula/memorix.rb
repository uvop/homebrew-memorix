class Memorix < Formula
    version "1.4.8"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "9256389f3b7698fb07121ed8729c6f368adc0522f883df3d29648b76f9e638dc"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "3c91208942c0e2acc55d2827d0bb2c92046bfa0db2389b2e382016ef6556ddd9"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "3c91208942c0e2acc55d2827d0bb2c92046bfa0db2389b2e382016ef6556ddd9"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end