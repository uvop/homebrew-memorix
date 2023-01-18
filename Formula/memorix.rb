class Memorix < Formula
    version "1.0.6"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "1f24ab4253eaee96ba9cfdb317b82cb52697d94f2150b3a5f966b93dbc89e212"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "ea30cdb913626713219ba677814c302cef67164fe23067b6730a3150525f336a"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "ea30cdb913626713219ba677814c302cef67164fe23067b6730a3150525f336a"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end