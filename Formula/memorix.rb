class Memorix < Formula
    version "1.3.0"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "80b2f8e2cd62be19ae725b76cfacd5be5d7d5c02ae7bcc665c119197c8f7ebd0"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "a91d2379e921fa7e03f66569c40a3675cdc2ce2bfd0998527ffebbc21ed5515c"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "a91d2379e921fa7e03f66569c40a3675cdc2ce2bfd0998527ffebbc21ed5515c"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end