class Memorix < Formula
    version "1.4.18"
  
    if OS::linux?
        url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-linux-x64.tar.gz"
        sha256 "6b99af10d0686a191e14df6560d22461988b265d4f829c7b42ce4eaf2bb84031"
    else
        if Hardware::CPU.intel?
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "e98dfc5f95ca0f48a52b4a296ee1b8df43d45f2b55123cd6938224b6a176c160"
        else
            # For now m1 will use x64
            url "https://github.com/uvop/memorix/releases/download/v#{version}/memorix-macos-x64.tar.gz"
            sha256 "e98dfc5f95ca0f48a52b4a296ee1b8df43d45f2b55123cd6938224b6a176c160"
        end
    end
  
    desc "Memorix - CLI"
    homepage "https://github.com/uvop/memorix"
  
    def install
        bin.install "memorix"
    end
end