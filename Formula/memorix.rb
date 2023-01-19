class Memorix < Formula
    version "1.1.0"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "936d08ac10c754ef5792b3ff631cf16361e45ff7efcabd727dbfa137055332aa"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "1f3a5de28c5bc6456cdde9a3c3d2ea8b8f970d803c31513b01d8ffdb6404b2a9"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "1f3a5de28c5bc6456cdde9a3c3d2ea8b8f970d803c31513b01d8ffdb6404b2a9"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end