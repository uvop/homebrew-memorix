class Memorix < Formula
    version "1.3.2"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "64266ad0ab4694d12d0a6a099e09306e5d533eae741c883a4148d4f9f371c608"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "fa77d93bdef086d57186128647b3e7c2076fad3933e130e4d1dc81c0a35e261c"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "fa77d93bdef086d57186128647b3e7c2076fad3933e130e4d1dc81c0a35e261c"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end