class Memorix < Formula
    version "1.2.2"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "a04772aa4b4a20c7a94f11ddb08aaac7e56be99cdf5600f614a827a73675c5e1"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "c7b755ba29397af8812f307c875a968cc876c775cd9f6d42eababa68a88c9acf"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "c7b755ba29397af8812f307c875a968cc876c775cd9f6d42eababa68a88c9acf"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end