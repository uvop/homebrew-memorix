class Memorix < Formula
    version "1.3.1"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "661944e3873d2838d0de9abf1c85078c8fb95b20c0d287d0dd9146becdf3d832"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "614e20ec3491ac37ab02a70c48f347fbded6343366fe2bb3b13501b5a7e31953"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "614e20ec3491ac37ab02a70c48f347fbded6343366fe2bb3b13501b5a7e31953"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end