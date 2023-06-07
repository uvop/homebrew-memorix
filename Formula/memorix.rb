class Memorix < Formula
    version "1.3.3"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "9c7fe6f91f649cb8e04d13df590aa58f091767d8dc576f423863a9eed14b9be1"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "e664a84a2dc013a21d1330c6e25679a3f1d67950e0795311c02a306159a3cd6b"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "e664a84a2dc013a21d1330c6e25679a3f1d67950e0795311c02a306159a3cd6b"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end