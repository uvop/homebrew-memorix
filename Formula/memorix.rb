class Memorix < Formula
    version "1.5.0"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "4828ac856d1c8e35e29ac4587eeb63e646b0a31b4221d7d83caac58ded5544c2"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "484790dac000461b4154a51a5b212ee861459969bc62238571160ae91f98669c"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "484790dac000461b4154a51a5b212ee861459969bc62238571160ae91f98669c"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end