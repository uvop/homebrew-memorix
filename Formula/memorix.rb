class Memorix < Formula
    version "1.4.0"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "7303380c2bd63f1eb6995fcbb1235b831bf46872588eee83a5c6bf7565e9416b"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "0ebeeae229a15abcf565ae830541ae2746a635c6e7a30e36a712dbabc1b2a3a7"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "0ebeeae229a15abcf565ae830541ae2746a635c6e7a30e36a712dbabc1b2a3a7"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end