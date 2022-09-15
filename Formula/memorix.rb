class Memorix < Formula
    version "1.0.0-rc.16"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "fb755767eff03267a07962c3a8f65fbb57b95055c05a7a18a7b11e56aa7e4f2e"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "9007f4529877a8b01b8078553cc683213e1781fc881a8bfeed50b76d2cf75c47"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "9007f4529877a8b01b8078553cc683213e1781fc881a8bfeed50b76d2cf75c47"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end