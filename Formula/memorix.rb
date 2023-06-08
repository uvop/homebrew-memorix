class Memorix < Formula
    version "1.4.4"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "c1bdfc4615e26291f4f5100883137b2fa082c7ab12623667c79c67410d55aa0c"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "65bfc5cc69f422d28daa99d8a5df32381b2da9d4f6ebeade809e4a586032649a"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "65bfc5cc69f422d28daa99d8a5df32381b2da9d4f6ebeade809e4a586032649a"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end