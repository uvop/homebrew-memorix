class Memorix < Formula
    version "1.4.15"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "f6d91d58b85e2f8899c67ba748fd44cfb8d8a8314e5a15a4e0b234e5ade1c7da"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "8cf65a3a9046a2805c79a0c5ef3c8feb3cced882fdafb12d79b535cb677c5bbe"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "8cf65a3a9046a2805c79a0c5ef3c8feb3cced882fdafb12d79b535cb677c5bbe"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end