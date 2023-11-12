class Memorix < Formula
    version "1.5.2"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "06fd0d30b59987986aee1b02cf655da579bb182ee20222199794879c06fa2df7"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "5a819856c908a9ef4bf9624b89a667ad8abfcd2fd5526dfe2020cde9bb731fa8"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "5a819856c908a9ef4bf9624b89a667ad8abfcd2fd5526dfe2020cde9bb731fa8"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end