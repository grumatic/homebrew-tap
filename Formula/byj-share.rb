# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.2 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.2/byj-share-0.3.2-macos-arm64"
      sha256 "740b660e9e36528582a8e03830b721a079782c172b1d3f022c05e3fa6f800d75"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.2/byj-share-0.3.2-macos-amd64"
      sha256 "d57c9688129b5e4aa47497f8d9681726f9513da799873c0c309a4330f284720a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.2/byj-share-0.3.2-linux-amd64"
      sha256 "6dac095c1916c9b5c3cff8e59fd52971bd45fa12eb5b3c407ece4e56799b26f3"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.2", shell_output("#{bin}/byj-share version")
  end
end
