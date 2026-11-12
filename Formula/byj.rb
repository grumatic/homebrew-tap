# Written by byj's dev/brew-formula.sh from grumatic/homebrew-tap's v0.3.19 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.19"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.19/byj-0.3.19-macos-arm64"
      sha256 "43e0b4970b7465094000a5e0af00ad2db1aac980b8ab0c717c37fa84bd460af1"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.19/byj-0.3.19-macos-amd64"
      sha256 "6f6b6c932be10caf262974fcc5b82d9e2a6e2d8228ffd27b7f1844e0c8f3be1e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.19/byj-0.3.19-linux-arm64"
      sha256 "bab6b66b194d16be13d60944973eff7247fbce4b0d3b1f40a020b348470a23bc"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.19/byj-0.3.19-linux-amd64"
      sha256 "8f8d0ba2bcd88151232df029bc8a09e7ddbe842f825fe1fbe6586b6281996769"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.19 ", shell_output("#{bin}/byj --version")
  end
end
