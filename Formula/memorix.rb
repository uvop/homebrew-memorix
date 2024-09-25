class Memorix < Formula
    version "1.5.12"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "2d4f665403d0aa47d6cdccc5d4de53f0347264d767587e4946f3eb167bc63811"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "2487c107c0245edab73fc62cda7da697ee7f6c8c57c8bb2e0651461a4fceba8f"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "2487c107c0245edab73fc62cda7da697ee7f6c8c57c8bb2e0651461a4fceba8f"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end