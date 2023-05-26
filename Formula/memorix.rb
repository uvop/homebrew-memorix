class Memorix < Formula
    version "1.4.1"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "a37861412d51e8fbfd2d3d8f34d6d97f4dd04c4af9f62c6f9bfdeca5eed67aa8"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "6b6db73bd32c968ef797f3699806fc856cec027f37c6f81e8947e3fcf60c1252"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "6b6db73bd32c968ef797f3699806fc856cec027f37c6f81e8947e3fcf60c1252"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end