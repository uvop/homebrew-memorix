class Memorix < Formula
    version "1.0.2"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "1674bf728c888ba2070f3f99312118f81caf00a3b999d0101af3e43d12efa268"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "b6e70005f67e3748baf568ad8b34a89ca8fcb83a4e3dace4ea27ff95a3317ed2"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "b6e70005f67e3748baf568ad8b34a89ca8fcb83a4e3dace4ea27ff95a3317ed2"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end