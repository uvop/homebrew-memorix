class Memorix < Formula
    version "1.4.7"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "1dd73693ad21c21116c5f01b05a9a34e3256ff8c691e0737c330bc91ab714054"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "19af3b683adb856c44f1d9d760c91edee990a9a744be34c2ea74394a9b4ed3a9"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "19af3b683adb856c44f1d9d760c91edee990a9a744be34c2ea74394a9b4ed3a9"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end