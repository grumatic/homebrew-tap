# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.14 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.14"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.14/byj-share-0.3.14-macos-arm64"
      sha256 "b047d4482045339fc864beec6652e7fb0de919934f5a98819234868bbe9ce77a"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.14/byj-share-0.3.14-macos-amd64"
      sha256 "455088031350bedcf3ffaf8e96d08ee3d0835f0168c2dc6f56b45f8056212b34"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.14/byj-share-0.3.14-linux-amd64"
      sha256 "29f50a67ccb3129d04b0691ad0d3076797797e4f6a2c5e574cc4b79f3b33f41c"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.14", shell_output("#{bin}/byj-share version")
  end
end
