# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.8 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.8"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.8/byj-share-0.3.8-macos-arm64"
      sha256 "0e0eec227420cab38171055e3e217523dd1fcc67c42ac92bfbefd4d50fc4798a"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.8/byj-share-0.3.8-macos-amd64"
      sha256 "f1cc74d7215e481f6d64e879f7bf235d1b9180698699eebdd004cc3ae7f827b7"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.8/byj-share-0.3.8-linux-amd64"
      sha256 "a76019ada1ed0525de71e700f887f720f0ba617b3cd9ea6a2fcbdb5409460811"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.8", shell_output("#{bin}/byj-share version")
  end
end
