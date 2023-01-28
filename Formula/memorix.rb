class Memorix < Formula
    version "1.2.0"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "6731260efcffb0e407abb5a3aa7b557bee88e5f0f491a2cfc4de9943a85e784d"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "394123b7b26311572e894b28bdd88fc92e2bf73e198ff9fb50faa7c537dfedf4"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "394123b7b26311572e894b28bdd88fc92e2bf73e198ff9fb50faa7c537dfedf4"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end