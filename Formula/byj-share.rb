# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.11 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.11"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.11/byj-share-0.3.11-macos-arm64"
      sha256 "1c3d44c4ec4da1164d49993aed4f44058864da11e940b3672f1e38bf06e3e072"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.11/byj-share-0.3.11-macos-amd64"
      sha256 "29304ae96c6c24e2331ead86320d1c3419b98314e4d83b7b6da476e4da15183b"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.11/byj-share-0.3.11-linux-amd64"
      sha256 "867ab1891af7a93bae381ccafb14d02abf603a2d596c5af70868de757a35e3fe"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.11", shell_output("#{bin}/byj-share version")
  end
end
