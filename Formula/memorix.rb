class Memorix < Formula
    version "1.5.4"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "601cc9bc93eaf7c077bdb7f8be4c1546fbfcdb5936144b59a5203b985156150f"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "d5b7a09eb3de8fd4b74f25a346c2f6efcf71dfc031248193260be0ca4bad2c14"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "d5b7a09eb3de8fd4b74f25a346c2f6efcf71dfc031248193260be0ca4bad2c14"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end