class Memorix < Formula
    version "1.1.1"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "d3e605ac3acc6df4ae9cfcb349a432a0afd0e5881f23b5c73bae1e0b075ae211"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "088fed4fb69ddcf949b193a2864ee18c9c886843bccdb25d7f9a1fffaceb5ccb"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "088fed4fb69ddcf949b193a2864ee18c9c886843bccdb25d7f9a1fffaceb5ccb"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end