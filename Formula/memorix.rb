class Memorix < Formula
    version "1.4.3"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "409b8062973ebe2b2e8238f30a09028355d7b941abe095c7e4c6101ca0f24c1e"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "2c0bcba76cccd96c9e0b2e6a7a1031a03c54061a744e508d205ef88b5b111d41"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "2c0bcba76cccd96c9e0b2e6a7a1031a03c54061a744e508d205ef88b5b111d41"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end