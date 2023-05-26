class Memorix < Formula
    version "1.4.2"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "6d7932c9c5c0e68633b94871ab3e8570190cb10d21b908be8212724c488da832"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "38eacf89be047f7d812e14444322a2c9c9dad7d687e589a0e0c89d93592782a1"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "38eacf89be047f7d812e14444322a2c9c9dad7d687e589a0e0c89d93592782a1"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end