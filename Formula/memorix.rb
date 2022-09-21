class Memorix < Formula
    version "1.0.0-rc.19"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "fbacd8cee786044bc73d66515836d3fbd4a5b970d7d2a1dc9a0cab1cf54018ba"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "087ab4a3ab8c87845d5fa03d02b5b7cc40d8ef42f8bd9d26f0cd0783e9343236"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "087ab4a3ab8c87845d5fa03d02b5b7cc40d8ef42f8bd9d26f0cd0783e9343236"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end