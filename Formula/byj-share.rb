# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.1 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.1/byj-share-0.3.1-macos-arm64"
      sha256 "8c7beea8e014df46d8f3022f89a89037788979bbd33fc5e23cf6c1aeb8720cf1"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.1/byj-share-0.3.1-macos-amd64"
      sha256 "b70651ea2cad8a20d2dcf97dc7c598997d3b0c9b66a999a1c7d5d987920eee8a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.1/byj-share-0.3.1-linux-amd64"
      sha256 "e28097edd8b9c76e75154d6d4f2554b6a7fe1aa4097f6b856fd9758dcbfa0480"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.1", shell_output("#{bin}/byj-share version")
  end
end
