class Memorix < Formula
    version "1.0.0-rc.15"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "8100958141bee8140e7b3a623b9fc5b48f6c9349ab1f66bee2bf70ec73def414"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "7e43f04ec73e90c556764ba0bd5bbb6b3fe45dc03a2b76439a8e1c60734944fd"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "7e43f04ec73e90c556764ba0bd5bbb6b3fe45dc03a2b76439a8e1c60734944fd"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end