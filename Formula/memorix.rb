class Memorix < Formula
    version "1.5.13"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "678f9c47075d8dd2ce945559de72d36af3e52d4057bc4ffc6dcb42b13d0c2dd9"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "64282c78a08cab2407b3a4caf79db3d80bae0e7ee2b83ae8b08c80cffab74f3b"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "64282c78a08cab2407b3a4caf79db3d80bae0e7ee2b83ae8b08c80cffab74f3b"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end