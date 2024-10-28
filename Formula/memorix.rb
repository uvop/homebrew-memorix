class Memorix < Formula
  homepage "https://github.com/uvop/memorix"
  version "0.1.0"  # Will be auto-updated by the GitHub Action
  license "MIT"    # Add your license
  
  # macOS binaries (both ARM64 and x86_64)
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/username/your-repo/releases/download/v#{version}/memorix-macos-arm64"
      sha256 "WILL_BE_UPDATED_AUTOMATICALLY"  # Auto-updated by the action
    else
      url "https://github.com/username/your-repo/releases/download/v#{version}/memorix-macos-x64"
      sha256 "WILL_BE_UPDATED_AUTOMATICALLY"  # Auto-updated by the action
    end
  end
  
  # Linux binary (x86_64)
  on_linux do
    url "https://github.com/username/your-repo/releases/download/v#{version}/memorix-linux-x64"
    sha256 "WILL_BE_UPDATED_AUTOMATICALLY"  # Auto-updated by the action
  end

  def install
    # Install the binary with the correct name
    bin.install Dir["memorix*"].first => "memorix"
    
    # Optional: Install completion scripts
    # bash_completion.install "completions/your_binary.bash" => "your_binary"
    # zsh_completion.install "completions/your_binary.zsh" => "_your_binary"
    # fish_completion.install "completions/your_binary.fish"
    
    # Optional: Install man pages
    # man1.install "your_binary.1"
  end

  test do
    # Add tests to verify the installation
    assert_match "v#{version}", shell_output("#{bin}/memorix --version")
    # Add more test cases as needed
  end
end
