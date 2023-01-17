class Memorix < Formula
    version "1.0.5"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "eeec9b219c73b3bdba6e13d48d35577711246f8fa4c0b743c16ba7a64a23a7fd"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "1a095bf3b2bc9a6dfb8e7faebb8549d08ec3703d39072c6b5d93f6fd58fa7623"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "1a095bf3b2bc9a6dfb8e7faebb8549d08ec3703d39072c6b5d93f6fd58fa7623"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end