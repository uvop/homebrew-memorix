class Memorix < Formula
    version "1.0.0-rc.20"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "6b14c24ebf988b986a93dcedb9144e13c695948df17ea88502f767b49e51a7b7"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "c54da3af34e21d7970b537a0632b3f093f3a62f658127f4097e766be20f99f43"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "c54da3af34e21d7970b537a0632b3f093f3a62f658127f4097e766be20f99f43"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end