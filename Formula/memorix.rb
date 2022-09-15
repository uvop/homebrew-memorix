class Memorix < Formula
    version "1.0.0-rc.14"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "7574dd00425d3728acbb8659b6b22262832a567f4cfc59c1bfe755b9030e4550"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "0367d24a64dab8e8f983571671cfd861de2e017fec6cce4ab791a341a7587bd2"
        else
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 ""
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end