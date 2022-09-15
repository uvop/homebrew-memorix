class Memorix < Formula
    version "1.0.0-rc.13"
  
    if Hardware::CPU.intel?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
        sha256 "a83bdb80f0aa984a8b1ba189e043770aa59433e7696583a817c21d2bc3e1e0cc"
    else
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
        sha256 "a83bdb80f0aa984a8b1ba189e043770aa59433e7696583a817c21d2bc3e1e0cc"
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end