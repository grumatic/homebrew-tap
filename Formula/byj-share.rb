# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.5 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.5"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.5/byj-share-0.3.5-macos-arm64"
      sha256 "4f986040a072ad7a41cccecf2264bcb8a266614de2ffb0fa50f7f95b0b3cbc47"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.5/byj-share-0.3.5-macos-amd64"
      sha256 "2ed729479bd6e6e18a1560e3bfab8df0216aa093d044febec09f56f1dfdc1749"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.5/byj-share-0.3.5-linux-amd64"
      sha256 "af4cc9baef6cae857b6262ee5dec95ee82282fcaac6ec4c4a18e45613cd2cc8b"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.5", shell_output("#{bin}/byj-share version")
  end
end
