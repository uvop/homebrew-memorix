class Memorix < Formula
  desc "Memorix - CLI"
  homepage "https://github.com/uvop/memorix"
  version "2.0.0-rc2"  # Will be auto-updated by the GitHub Action
  license "MIT"    # Add your license
  
  # macOS binaries (both ARM64 and x86_64)
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uvop/memorix/archive/refs/tags/v2.0.0-rc2.tar.gz"
      sha256 "1cba309186509ced57d54f445a0e1ec0e71f93d98a2e103ed4fafa7f7875bdc7"  # Auto-updated by the action
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
    bin.install "memorix"
    
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
