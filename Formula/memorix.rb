class Memorix < Formula
    version "1.5.11"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "d455be1fc1f7a5cbcce807d1fe00590ef2e247043c2b234d8b5aed8593dd7f4e"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "7c5116062cb98b564861058aec91f59109d149f26acfbdf00bed040d5bf85c6b"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "7c5116062cb98b564861058aec91f59109d149f26acfbdf00bed040d5bf85c6b"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end