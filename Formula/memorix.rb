class Memorix < Formula
    version "1.4.9"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "39c674b129f8a9896ac63e99b6049834effdc169ee557f0058f781c3e8d736da"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "de9d9894ebbaf2ad41ad383ed36e5a6dfad82006eb61356eac158861a5251cea"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "de9d9894ebbaf2ad41ad383ed36e5a6dfad82006eb61356eac158861a5251cea"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end