class Memorix < Formula
    version "1.2.3"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "2e37eb9320afc0a5455beea8db9520a9725cde8c77057f0036a166841b89c8c3"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "d48ead3d4826e36fec9733524111b76b1938870859e4a605f690b062491e8db0"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "d48ead3d4826e36fec9733524111b76b1938870859e4a605f690b062491e8db0"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end