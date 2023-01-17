class Memorix < Formula
    version "1.0.3"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "4200d4009d0f41298f4d91d6323d82f6804b0a9f0459fcbe4de246abbce9d287"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "f34ce510987758c1ea4834cf6f67dc0e16f88667b6aa31fa2ebad5a4b4ce0a41"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "f34ce510987758c1ea4834cf6f67dc0e16f88667b6aa31fa2ebad5a4b4ce0a41"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end