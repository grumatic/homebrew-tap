# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.15 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.15"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.15/byj-share-0.3.15-macos-arm64"
      sha256 "b6b22a7bff4d1d6365c803d64df0c8cbd624db25afde6b277791f1a144f1a9ea"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.15/byj-share-0.3.15-macos-amd64"
      sha256 "cc2457839b7073118f61470d3131985114a46750be6498f7783db1dc829e06a9"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.15/byj-share-0.3.15-linux-amd64"
      sha256 "9f1b00130521c304d134ed8a1283e9088897ad315b820c68c87c4de5e9ead71c"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.15", shell_output("#{bin}/byj-share version")
  end
end
