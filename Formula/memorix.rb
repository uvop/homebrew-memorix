class Memorix < Formula
    version "1.5.3"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "c3363e78edbac810a6f180da104932e36c4b6ddfca38963cb1e1838c4e3b8702"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "87431c6fc2c367e8e77eb394100b0b9fce99a27ff30e7db1b34ead5421e0099b"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "87431c6fc2c367e8e77eb394100b0b9fce99a27ff30e7db1b34ead5421e0099b"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end