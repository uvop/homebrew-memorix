class Memorix < Formula
    version "1.0.4"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "7b65b2f476906f31fa371ed4a08fba01145adc7eebe4e1287d32c66e1eb56d01"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "a062572c93e103a0611863100bd4f1bf8098f2bed6047fbf6fc470af4202c971"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "a062572c93e103a0611863100bd4f1bf8098f2bed6047fbf6fc470af4202c971"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end