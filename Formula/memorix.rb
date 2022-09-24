class Memorix < Formula
    version "1.0.0"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "8c6bb73629b6f29f4f5acf453f3c40850fbf544576da2f039af5199377795e46"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "9f350933bc2f288821a59db72788c405c3734e9b7befdb730e8687112598dd2b"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "9f350933bc2f288821a59db72788c405c3734e9b7befdb730e8687112598dd2b"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end