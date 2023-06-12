class Memorix < Formula
    version "1.4.6"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "d5bd0fd8aa666895d0e89f57d80db6c7d8d3609c51076709ecabe4fa1b3d8d28"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "5f34c1da0a8bac5ec77cb54599139ab1f05f17e111c7ff58db6edae07bd71fc9"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "5f34c1da0a8bac5ec77cb54599139ab1f05f17e111c7ff58db6edae07bd71fc9"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end