class Memorix < Formula
    version "1.4.16"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "a5fa48e361e948b5f49f325cf7d2fc62a5ed17b926fd4002439e9c52eb100145"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "ce37b2acd381e0fca0db48327ec3da0500b543be392596d268a525b4a20d6caa"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "ce37b2acd381e0fca0db48327ec3da0500b543be392596d268a525b4a20d6caa"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end