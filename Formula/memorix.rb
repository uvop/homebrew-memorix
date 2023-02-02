class Memorix < Formula
    version "1.2.1"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "04040399b22fa710ae918fd71cf76604e9c4637d7566e173a73bd95a4abe33cb"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "4c91dc65112595ad6007ed9c6b34eb2f30f7728a66f6c529ff18c83928644be2"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "4c91dc65112595ad6007ed9c6b34eb2f30f7728a66f6c529ff18c83928644be2"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end