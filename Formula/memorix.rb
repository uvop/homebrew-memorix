class Memorix < Formula
    version "1.0.1"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "33dbdcd1b265e11198f0baa8dedde98c4f91d1efadde2682dd5802bf2e448c17"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "91ce0debb83708834ffed7b0a0c1d80890c78bd16061a860241c630f337e605a"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "91ce0debb83708834ffed7b0a0c1d80890c78bd16061a860241c630f337e605a"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end