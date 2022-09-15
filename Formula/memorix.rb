class Memorix < Formula
    version "1.0.0-rc.10"
  
    if Hardware::CPU.intel?
        url "https://github.com/uvop/memorix/releases/download/v1.0.0-rc.10/memorix-macos-x64.tar.gz"
        sha256 "143e8bf185e748be1c9384228a42677698cb737452b3d353fd8e06f0a91dd9fa"
    else
        url "https://github.com/uvop/memorix/releases/download/v1.0.0-rc.10/memorix-macos-x64.tar.gz"
        sha256 "143e8bf185e748be1c9384228a42677698cb737452b3d353fd8e06f0a91dd9fa"
    end
  
    name "Memorix"
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end