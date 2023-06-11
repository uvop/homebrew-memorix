class Memorix < Formula
    version "1.4.5"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "9d8ab5d807803c0203650804f62f971da2633487f42cb1513358610c00880367"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "4cdb60d80246bae9d01efe856ee871f5ab9451382b44d512e8c06da06a97d5b7"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "4cdb60d80246bae9d01efe856ee871f5ab9451382b44d512e8c06da06a97d5b7"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end