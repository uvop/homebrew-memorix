class Memorix < Formula
    version "1.5.10"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "d8d069b01217a197092117c480a9bb163210cd0267dc8084aae2caf0fd4fb2d2"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "ec4a544aa79f0d7dcc547eaadc6f5888cea78c381b281dbe5111e83e886d97e8"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "ec4a544aa79f0d7dcc547eaadc6f5888cea78c381b281dbe5111e83e886d97e8"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end