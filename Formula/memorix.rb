class Memorix < Formula
    version "1.5.1"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "6fe5c76c70bfcb797796a23c1dd94ab84d9bf2dc2454f55a87030e9225e94469"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "59f19ff3a169a8ce144e0537f3dbdd346df8cfe02d2eb34b3878318591491051"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "59f19ff3a169a8ce144e0537f3dbdd346df8cfe02d2eb34b3878318591491051"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end